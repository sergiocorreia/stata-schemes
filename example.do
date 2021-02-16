clear all
cls


cap ado uninstall "scheme-sergio"
net install scheme-sergio, from(https://raw.githubusercontent.com/sergiocorreia/stata-schemes/main)
discard


sysuse auto
tw (sc price weight if foreign==0) (sc price weight if foreign==1), scheme(sergio)
graph export "example-sergio.png", width(600)
tw (sc price weight if foreign==0) (sc price weight if foreign==1), scheme(s2color)
graph export "example-s2color.png", width(600)
