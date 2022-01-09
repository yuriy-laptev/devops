# devops
xcode editor
в папке терраформ будут игнорироватся:
все служебные файлы терраформа (в скрытой папке .terraform) стр.2
 файлы статуса (с расширением .tfstate)стр.5,6
логи при падении терраформа стр.9,10
файл с переменными тераформа стр.17
файлы с переопределяемыми ресурсами. стр.21-24
конфигурационные файлы стр.34,35
новая строка
что то пошло не так

задание 2.4
1.
хеш aefead2207ef7e2aa5dc81a34aedf0cad4c32545
коментарий Update CHANGELOG.md
получил 2 командами. git checkout aefea ; git log;
2.
v0.12.23
нашел git tag -l --points-at 85024d3
3.
 9ea88f22fc6269854151c571162c5bcf958bee2b   git show b8d720^2
   56cd7859e05c36c06b56d013b55a252d0bb7e158   git show b8d720^
4.
b14b74c49 [Website] vmc provider links
3f235065b Update CHANGELOG.md
6ae64e247 registry: Fix panic when server is unreachable
5c619ca1b website: Remove links to the getting started guide's old location
06275647e Update CHANGELOG.md
d5f9411f5 command: Fix bug when using terraform login on Windows
4b6d06cc5 Update CHANGELOG.md
dd01a3507 Update CHANGELOG.md
225466bc3 Cleanup after v0.12.23 release
получил командой  git log v0.12.23 --not v0.12.24^ --pretty=format:'%h %s'
5.
8c928e835 git log --oneline -S'func providerSource('
6.
78b122055 Remove config.go and update things using its aliases
52dbf9483 keep .terraform.d/plugins for discovery
41ab0aef7 Add missing OS_ARCH dir to global plugin paths
66ebff90c move some more plugin search path logic to command
8364383c3 Push plugin discovery down into command package
нашел git grep --break --heading -p "globalPluginDirs"
потом пробежался по всем файлам:
commands.go
config_unix.go
plugins.go
нашел git log --oneline -L :globalPluginDirs:plugins.go
7.
commit 5ac311e2a91e381e2f52234668b49ba670aa0fe5
Author: Martin Atkins <mart@degeneration.co.uk>
нашел git log --oneline -S'synchronizedWriters'
потом пробежался git show по 3 коммитам
