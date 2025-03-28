# Esportare video in Processing

1. Installare la Libreria in Processing: Tools > Manage Tools > Library > Video Export
2. Per poter usare la libreria è necessario installare FFMPEG, per farlo (su MacOS) aprire il Terminale da Applicazioni > Utility > Terminale e fare copia-incolla del seguente comando e premere INVIO

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Inserire la password del vostro computer (non verrà visualizzata) e poi premete INVIO.
4. Seguite le indicazioni nel terminale e attendete il completamento dell'installazione
5. È probabile che vi chieda di installare gli XCode Command Line Tools che sono necessari per funzionare.
6. Una volta completata l'installazione sempre nel terminale provate a digitare il seguente comando:

```
brew install ffmpeg
```

7. Se ricevete il seguente errore: `zsh: command not found: brew` dovete copiare e incollare questa riga nel terminale:

```
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
```

e premete invio (inserite la password se richiesta) e poi incollate questa riga:

```
eval $(/opt/homebrew/bin/brew shellenv)
```

e premete invio (inserite la password se richiesta)

8. Se tutto è installo correttamente, rilanciate il comando

```
brew install ffmpeg
```

E attendete il completamento dell'installazione.
