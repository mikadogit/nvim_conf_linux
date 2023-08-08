local fichier_config = vim.fn.getcwd().."/dap_conf.txt"

local function trim(s)
    return s:match'^()%s*$' and '' or s:match'^%s*(.*%S)'
end

local function lire_fichier_config(chemin_fichier)
    local variables = {}
        for ligne in io.lines(chemin_fichier) do
            local nom_variable, valeur = ligne:match("([^=]+)=(.*)")
            if nom_variable and valeur then
              variables[trim(nom_variable)] = trim(valeur)
            end
        end
        return variables
 end

 -- Appel de la fonction pour lire le fichier
 local configuration = lire_fichier_config(fichier_config)

 -- Maintenant, vous pouvez accéder aux valeurs à l'aide des noms de variable
exec_name = configuration.exec_name
windows_bin_path = configuration.windows_bin_path
wsl_bin_path = configuration.wsl_bin_path
wsl_gdb_path = configuration.wsl_gdb_path

os.execute(wsl_gdb_path.."gdbserver.exe 127.0.0.1:2000 "..windows_bin_path..exec_name.." & ")
vim.wait(500)
