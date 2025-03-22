local ollama = require("ollama")

ollama.cmd = {
    "Ollama",
    "OllamaModel",
    "OllamaServe",
    "OllamaServeStop"
}

ollama.keys = {
    {
        "<leader>oo",
        ":<c-u>lua require('ollama').prompt()<cr>",
        desc = "ollama prompt",
        mode = { "n", "v" },
    },

    {
        "<leader>oG",
        ":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
        desc = "ollama Generate Code",
        mode = { "n", "v" },
    },
}
