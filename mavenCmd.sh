cd /d/workspace/
mvn archetype:generate -DgroupId=a -DartifactId=b -Dversion=1.0.0.1
cd b
git init
touch readme.txt
git add readme.txt
git commit readme.txt -m "init"
git remote add origin git@github.com:sunbin05/osHelper.git
git push -u master
