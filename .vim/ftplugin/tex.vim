vim9script

compiler tex

def Compile()
	w
	cd %:p:h	
	silent make
	cd -
	cwindow
	redraw!
enddef

def OnError(channelname: channel, msg: string)
	echoerr msg
enddef

def Openpdf()
	const proc = "zathura"
	const par0 = "--config-dir"
        const args0 = "~/.config/zathura/synctex/"
	const path = expand('%:p:r') .. ".pdf"
	const par1 = "--synctex-forward"
	const args1 = line(".") .. ":" .. col(".") .. ":" .. expand('%:p')
	
	const cmd = [proc, par0, args0, path, par1, args1]
	job_start(cmd, {"err_cb": OnError})
enddef

nnoremap <buffer> <localleader>c <ScriptCmd>Compile()<LF>
nnoremap <buffer> <localleader>r <ScriptCmd>Openpdf()<LF>

nnoremap <buffer> <localleader>s :so ~/.vim/ftplugin/tex.vim<LF>
