local example = require 'package.nls-example'

return {
    ['config.awakened.cat']               = 'PLAY WITH ME >_<\n\n(This will enable the beta version which is still in development. Feedback is welcome! Reload the window after changing this option!)',
    ["config.runtime.version"]            = "Lua runtime version.",
    ["config.runtime.path"]               = [[
When using `require`, how to find the file based on the input name.
Setting this config to `?/init.lua` means that when you enter `require 'myfile'`, all `**/myfile/init.lua` will be searched from the loaded files.
If you want to load files outside the workspace, you need to set `Lua.workspace.library` first.
]],
    ["config.runtime.special"]            = [[The custom global variables are regarded as some special built-in variables, and the language server will provide special support
The following example shows that 'include' is treated as' require '.
]] .. example.special,
    ["config.runtime.unicodeName"]        = "Allows Unicode characters in name.",
    ["config.runtime.nonstandardSymbol"]  = "Supports non-standard symbols. Make sure that your runtime environment supports these symbols.",
    ["config.runtime.plugin"]             = "Plugin path. Please read [wiki](https://github.com/sumneko/lua-language-server/wiki/Plugin) to learn more.",
    ["config.runtime.fileEncoding"]       = "File encoding. The `ansi` option is only available under the `Windows` platform.",
    ['config.runtime.builtin']            = [[
Adjust the enabled state of the built-in library. You can disable (or redefine) the non-existent library according to the actual runtime environment.

* `default`: Indicates that the library will be enabled or disabled according to the runtime version
* `enable`: always enable
* `disable`: always disable
]],
    ['config.workspace.userThirdParty']          = 'Add private third-party library configuration file paths here, please refer to the built-in [configuration file path](https://github.com/sumneko/lua-language-server/tree/master/meta/3rd)',
    ["config.diagnostics.enable"]         = "Enable diagnostics.",
    ["config.diagnostics.disable"]        = "Disabled diagnostic (Use code in hover brackets).\n",-- .. example.disable,
    ["config.diagnostics.globals"]        = "Defined global variables.\n",-- .. example.globals,
    ["config.diagnostics.severity"]       = "Modified diagnostic severity.\n",-- .. example.severity,
    ["config.diagnostics.neededFileStatus"]     = "If you want to check only opened files, choice Opened; else choice Any.\n",-- .. example.neededFileStatus,
    ["config.diagnostics.workspaceDelay"] = "Latency (milliseconds) for workspace diagnostics. When you start the workspace, or edit any file, the entire workspace will be re-diagnosed in the background. Set to negative to disable workspace diagnostics.",
    ["config.diagnostics.workspaceRate"]  = "Workspace diagnostics run rate (%). Decreasing this value reduces CPU usage, but also reduces the speed of workspace diagnostics. The diagnosis of the file you are currently editing is always done at full speed and is not affected by this setting.",
    ["config.diagnostics.libraryFiles"]   = "How to diagnose files loaded via `Lua.workspace.library`.",
    ["config.diagnostics.ignoredFiles"]   = "How to diagnose ignored files.",
    ["config.diagnostics.files.Enable"]   = "Always diagnose these files.",
    ["config.diagnostics.files.Opened"]   = "Only when these files are opened will it be diagnosed.",
    ["config.diagnostics.files.Disable"]  = "These files are not diagnosed.",
    ["config.workspace.ignoreDir"]        = "Ignored files and directories (Use `.gitignore` grammar).\n",-- .. example.ignoreDir,
    ["config.workspace.ignoreSubmodules"] = "Ignore submodules.",
    ["config.workspace.useGitIgnore"]     = "Ignore files list in `.gitignore` .",
    ["config.workspace.maxPreload"]       = "Max preloaded files.",
    ["config.workspace.preloadFileSize"]  = "Skip files larger than this value (KB) when preloading.",
    ["config.workspace.library"]          = "In addition to the current workspace, which directories will load files from.",
['config.workspace.checkThirdParty']  = [[
Automatic detection and adaptation of third-party libraries, currently supported libraries are:

* OpenResty
* Cocos4.0
* LÖVE
* Jass
]],
    ['config.completion.enable']                 = 'Enable completion.',
    ['config.completion.callSnippet']            = 'Shows function call snippets.',
    ['config.completion.callSnippet.Disable']    = "Only shows `function name`.",
    ['config.completion.callSnippet.Both']       = "Shows `function name` and `call snippet`.",
    ['config.completion.callSnippet.Replace']    = "Only shows `call snippet.`",
    ['config.completion.keywordSnippet']         = 'Shows keyword syntax snippets.',
    ['config.completion.keywordSnippet.Disable'] = "Only shows `keyword`.",
    ['config.completion.keywordSnippet.Both']    = "Shows `keyword` and `syntax snippet`.",
    ['config.completion.keywordSnippet.Replace'] = "Only shows `syntax snippet`.",
    ['config.completion.displayContext']         = "Previewing the relevant code snippet of the suggestion may help you understand the usage of the suggestion. The number set indicates the number of intercepted lines in the code fragment. If it is set to `0`, this feature can be disabled.",
    ['config.completion.workspaceWord']          = "Whether the displayed context word contains the content of other files in the workspace.",
    ['config.completion.showWord']               = "Show contextual words in suggestions.",
    ['config.completion.showWord.Enable']        = "Always show context words in suggestions.",
    ['config.completion.showWord.Fallback']      = "Contextual words are only displayed when suggestions based on semantics cannot be provided.",
    ['config.completion.showWord.Disable']       = "Do not display context words.",
    ['config.completion.autoRequire']            = "When the input looks like a file name, automatically `require` this file.",
    ['config.completion.showParams']             = "Display parameters in completion list. When the function has multiple definitions, they will be displayed separately.",
    ['config.completion.requireSeparator']       = "The separator used when `require`.",
    ['config.color.mode']                        = "Color mode.",
    ['config.color.mode.Semantic']               = "Semantic color. You may need to set `editor.semanticHighlighting.enabled` to `true` to take effect.",
    ['config.color.mode.SemanticEnhanced']       = "Enhanced semantic color. Like `Semantic`, but with additional analysis which might be more computationally expensive.",
    ['config.color.mode.Grammar']                = "Grammar color.",
    ['config.signatureHelp.enable']              = "Enable signature help.",
    ['config.hover.enable']                      = "Enable hover.",
    ['config.hover.viewString']                  = "Hover to view the contents of a string (only if the literal contains an escape character).",
    ['config.hover.viewStringMax']               = "The maximum length of a hover to view the contents of a string.",
    ['config.hover.viewNumber']                  = "Hover to view numeric content (only if literal is not decimal).",
    ['config.hover.fieldInfer']                  = "When hovering to view a table, type infer will be performed for each field. When the accumulated time of type infer reaches the set value (MS), the type infer of subsequent fields will be skipped.",
    ['config.hover.previewFields']               = "When hovering to view a table, limits the maximum number of previews for fields.",
    ['config.hover.enumsLimit']                  = "When the value corresponds to multiple types, limit the number of types displaying.",
    ['config.zzzzzz.cat']                        = 'DONT TOUCH ME, LET ME SLEEP >_<',
    ['config.develop.enable']                    = 'Developer mode. Do not enable, performance will be affected.',
    ['config.develop.debuggerPort']              = 'Listen port of debugger.',
    ['config.develop.debuggerWait']              = 'Suspend before debugger connects.',
    ['config.intelliSense.searchDepth']          = 'Set the search depth for IntelliSense. Increasing this value increases accuracy, but decreases performance. Different workspace have different tolerance for this setting. Please adjust it to the appropriate value.',
    ['config.intelliSense.fastGlobal']           = 'In the global variable completion, and view `_G` suspension prompt. This will slightly reduce the accuracy of type speculation, but it will have a significant performance improvement for projects that use a lot of global variables.',
    ['config.window.statusBar']                  = 'Show extension status in status bar.',
    ['config.window.progressBar']                = 'Show progress bar in status bar.',
    ['config.hint.enable']                       = 'Enabel hint.',
    ['config.hint.paramType']                    = 'Show type hints at the parameter of the function.',
    ['config.hint.setType']                      = 'Show hints of type at assignment operation.',
    ['config.hint.paramName']                    = 'Show hints of parameter name at the function call.',
    ['config.hint.paramName.All']                = 'All types of parameters are shown.',
    ['config.hint.paramName.Literal']            = 'Only literal type parameters are shown.',
    ['config.hint.paramName.Disable']            = 'Disable parameter hints.',
    ['config.telemetry.enable']                  = [[
Enable telemetry to send your editor information and error logs over the network. Read our privacy policy [here](https://github.com/sumneko/lua-language-server/wiki/Privacy-Policy).
]],
    ['config.misc.parameters']                   = '[Command line parameters](https://github.com/sumneko/lua-telemetry-server/tree/master/method) when starting the language service in VSCode.',
}
