local path_to_download = '/opt/omnisharp'
require('lspconfig').omnisharp.setup {
    cmd = {
        'mono',
        '--assembly-loader=strict',
        path_to_download .. '/OmniSharp',
    },
    use_mono = true,
}
