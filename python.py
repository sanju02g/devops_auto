import subprocess
def main():
  subprocess.run(["python","--version"])
  commit_id = subprocess.check_output(['git', 'rev-parse', 'HEAD']).decode('utf-8').strip()
  print(f"the commit id is -{commit_id}")

main()
