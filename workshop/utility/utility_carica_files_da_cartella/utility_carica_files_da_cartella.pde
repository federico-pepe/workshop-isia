/*
    Workshop ISIA: Processing e il Generative Design per l'Editoria
    con / with Federico Pepe
    a cura di / curated by Valentina Rachiele
    per II anno Editoria / for 2nd year Publishing
    24-28 Marzo 2025

    Importare tutti i file in una cartella
*/

// Import the java library
import java.io.FilenameFilter;

String path;

void setup() {
  // Ask the folder when the sketch is started
  selectFolder("Select a folder to process:", "folderSelected");
}

// Filter by file extension
String[] exts = {
  ".gif", ".png", ".jpeg", ".jpg"
};

FilenameFilter filenameFilter = new FilenameFilter() {
  boolean accept(File dir, String name) {
    for (String ext : exts) {
      if (name.endsWith(ext)) {
        return true;
      }
    }
    return false;
  }
};
// Create an array with all the file names
String [] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list(filenameFilter);
    return names;
  } else {
    return null;
  }
}
// Select the folder
void folderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
    path = sketchPath();
  } else {
    println("Folder selected: " + selection.getAbsolutePath());
    path = selection.getAbsolutePath();
  }

  String[] filenames = listFileNames(path);

  printArray(filenames);
}
