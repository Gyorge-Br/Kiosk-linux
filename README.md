  Aqui você encontra os arquivos base para criar um "Kiosk" no linux.

  Quando me refiro a "Kiosk" no Linux digo: Um usuario que so tem acesso a um aplicativo na tela.
Nsse caso é o firefox, com um site html redirecionando para varios sites de streaming, para usar
em algum tipo de projeto de TVbox.

  Para criar um Kiosk, primeiro coloque o arquivo .desktop no diretorio que seu gerenciador de
login usa para buscar as interfaces graficas instaladas (Geralmente em /usr/share/xsessions),
depois coloque o arquivo .sh e o .html em /home. Pronto agora basta encerrar a sessão atual,
e no gerenciador de login seleciona o .desktop.
