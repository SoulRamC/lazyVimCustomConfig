local gen = require("gen")

-- Adding custom prompts
gen.prompts["Chat"] = {
  prompt = "$chat",
  replace = false,
}

gen.prompts["Enhance_Grammar"] = {
  prompt = "Modify the following text to improve grammar and spelling, just output the final text in English without additional quotes around it:\n$text",
  replace = true,
}

gen.prompts["Enhance_Wording"] = {
  prompt = "Modify the following text to use better wording, just output the final text without additional quotes around it:\n$text",
  replace = true,
}

gen.prompts["Make_Concise"] = {
  prompt = "Modify the following text to make it as simple and concise as possible, just output the final text without additional quotes around it:\n$text",
  replace = true,
}

gen.prompts["Generate_Simple_Description"] = {
  prompt = "Provide a simple and concise description of the following code:\n$code",
  replace = false,
}

gen.prompts["Generate_Detailed_Description"] = {
  prompt = "Provide a detailed description of the following code:\n$code",
  replace = false,
}

gen.prompts["Suggest_Better_Naming"] = {
  prompt = "Take all variable and function names, and provide only a list with suggestions with improved naming:\n$code",
  replace = false,
}

gen.prompts["Review_Code"] = {
  prompt = "Review the following code and make concise suggestions, only output the result in format:\n```$filetype\n$code\n```",
  replace = false,
}

gen.prompts["Simplify_Code"] = {
  prompt = "Simplify the following code, only output the result in format:\n```$filetype\n$code\n```",
  replace = true,
}

gen.prompts["Improve_Code"] = {
  prompt = "Improve the following code, only output the result in format:\n```$filetype\n$code\n```",
  replace = true,
}

gen.prompts["Issue"] = {
  prompt = "Provide a simple and concise insight about the following issue, try to fix it:\n$issue\nin the following code\n```$filetype\n$content\n```",
  replace = true,
}
