os.execute("source .set_env")
os.execute(os.getenv("wsl_path").."gdbserver.exe 127.0.0.1:2000 "..os.getenv("windows_bin_path")..os.getenv("exec_name").." & ")
