import json
import re
from pathlib import Path


class QuestFormatter:

    def __call__(self, **kwargs):
        self.__format_quests()

    def __format_quests(self) -> None:
        quest_input = self.__load_json_file("quest/quest_data.json")
        with Path("quest/quest_data.lua").open("w", encoding="utf-8") as g:
            g.write("return {\n")
            for item in quest_input:
                g.write("    [{id}] = {{\n".format(id=item["questId"]))
                g.write("        [questKeys.name] = \"{name}\",\n".format(name=item["name"]))
                g.write("        [questKeys.startedBy] = {npc_start},\n".format(npc_start=self.__get_start(item)))
                g.write("        [questKeys.finishedBy] = {npc_end},\n".format(npc_end=self.__get_end(item)))
                g.write("        [questKeys.requiredLevel] = {reqLevel},\n".format(reqLevel=item["reqLevel"]))
                g.write("        [questKeys.questLevel] = {level},\n".format(level=item["level"]))
                g.write("        [questKeys.requiredRaces] = {reqRace},\n".format(reqRace=self.__get_race_string(item["reqRace"])))
                g.write("        [questKeys.requiredClasses] = {reqClass},\n".format(reqClass=self.__get_class_string(item["reqClass"])))
                g.write("        [questKeys.objectivesText] = {text},\n".format(text=self.__get_objectives_text(item)))
                g.write("        [questKeys.objectives] = {text},\n".format(text=self.__get_objectives(item)))
                g.write("    },\n")
            g.write("}\n")

    def __load_json_file(self, file_name: str):
        print("Loading '{}'...".format(file_name))
        with Path(file_name).open("r", encoding="utf-8") as f:
            data = json.load(f)
        filtered_sorted_data = self.__sort_and_filter_data(data)
        print("Data contains {} entries".format(len(filtered_sorted_data)))
        return filtered_sorted_data

    def __sort_and_filter_data(self, data):
        sorted_data = sorted(data, key=lambda x: int(x.get('questId', 0)))
        filtered_sorted_data = []
        for x in sorted_data:
            entry_name = x["name"]
            if entry_name != "[Never used]" and entry_name.startswith("[DNT]") is False:
                filtered_sorted_data.append(x)
        return filtered_sorted_data

    def __get_start(self, item):
        if "npcStart" in item:
            return "{{" + ",".join(npcStart for npcStart in item["npcStart"]) + "}}"
        if "objectStart" in item:
            return "{nil,{" + ",".join(objectStart for objectStart in item["objectStart"]) + "}}"
        return "nil"

    def __get_end(self, item):
        if "npcEnd" in item:
            return "{{" + ",".join(npcEnd for npcEnd in item["npcEnd"]) + "}}"
        if "objectEnd" in item:
            return "{nil,{" + ",".join(objectEnd for objectEnd in item["objectEnd"]) + "}}"
        return "nil"

    def __get_race_string(self, req_race: int) -> str:
        if req_race == "0":
            return "raceIDs.NONE"
        if req_race == "1":
            return "raceIDs.HUMAN"
        if req_race == "2":
            return "raceIDs.ORC"
        if req_race == "4":
            return "raceIDs.DWARF"
        if req_race == "8":
            return "raceIDs.NIGHTELF"
        if req_race == "16":
            return "raceIDs.UNDEAD"
        if req_race == "32":
            return "raceIDs.TAUREN"
        if req_race == "64":
            return "raceIDs.GNOME"
        if req_race == "77":
            return "raceIDs.ALL_ALLIANCE"
        if req_race == "128":
            return "raceIDs.TROLL"
        if req_race == "178":
            return "raceIDs.ALL_HORDE"
        else:
            return "raceIDs.NONE"

    def __get_class_string(self, req_class: int) -> str:
        if req_class == "0":
            return "classIDs.NONE"
        if req_class == "1":
            return "classIDs.WARRIOR"
        if req_class == "2":
            return "classIDs.PALADIN"
        if req_class == "4":
            return "classIDs.HUNTER"
        if req_class == "8":
            return "classIDs.ROGUE"
        if req_class == "16":
            return "classIDs.PRIEST"
        if req_class == "64":
            return "classIDs.SHAMAN"
        if req_class == "128":
            return "classIDs.MAGE"
        if req_class == "256":
            return "classIDs.WARLOCK"
        if req_class == "1024":
            return "classIDs.DRUID"
        else:
            return "classIDs.NONE"

    def __get_objectives_text(self, item):
        if "objectivesText" in item:
            scripped_text = re.sub(r'A level .*', '', item["objectivesText"]).strip()
            scripped_text = scripped_text.replace("\"", "\\\"")
            if scripped_text:
                text_elements = scripped_text.split("\n")
                return "{\"" + "\",\"".join(text_elements) + "\"}"
        return "nil"

    def __get_objectives(self, item):
        if "killObjective" in item:
            objectives = ["{" + i + "}" for i in item["killObjective"]]
            return "{{" + ",".join(objectives) + "}}"
        elif "itemObjective" in item:
            reputation = ""
            if "reputationObjective" in item:
                reputation = "{" + item["reputationObjective"][0] + "," + self.__get_reputation_value(item["reputationObjective"][1]) + "}"

            objectives = "{nil,nil,{" + ",".join(["{" + i + "}" for i in item["itemObjective"]]) + "}"
            if reputation:
                objectives += "," + reputation
            return objectives + "}"
        elif "spellObjective" in item:
            return "{nil,nil,nil,nil,nil,{{" + item["spellObjective"] + "}}}"
        else:
            return "nil"

    def __get_reputation_value(self, reputation_value_name):
        if reputation_value_name == "Friendly":
            return "3000"
        if reputation_value_name == "Honored":
            return "9000"
        if reputation_value_name == "Revered":
            return "21000"
        if reputation_value_name == "Exalted":
            return "42000"
        return "0"


if __name__ == '__main__':
    formatter = QuestFormatter()
    formatter()
