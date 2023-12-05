/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package actionlistener;
import java.util.List;
import java.awt.event.*;
import java.io.FileWriter;
import java.io.IOException;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import biodata.BiodataFrame;
import biodata.Biodata;
/**
 *
 * @author wina agustina
 */
public class SaveToFileActionListener implements ActionListener{
  private final BiodataFrame biodataFrame; // Variable biodataFrame untuk menyimpan nilai dari parameter 1
  private final List<Biodata> biodataList; // Variable biodataList untuk menyimpan nilai dari parameter 2

  // Constructor SaveToFileActionListener
  public SaveToFileActionListener(BiodataFrame biodataFrame, List<Biodata> biodataList) {
    // Inisialisasi nilai dari biodataFrame dan biodataList
    this.biodataFrame = biodataFrame;
    this.biodataList = biodataList;
  }

  public void actionPerformed(ActionEvent e) {
    // Variable confirmation untuk menyimpan nilai dari message dialog konfirmasi
    int confirmation = JOptionPane.showConfirmDialog(this.biodataFrame,
            "Apakah anda yakin ingin menyimpan data ke file?",
            "Form Biodata",
            JOptionPane.YES_NO_OPTION);

    // Jika confirmation bernilai opsi yes
    if (confirmation == JOptionPane.YES_OPTION) {
        // Instansiasi JFileChooser dengan nama fileChooser
        JFileChooser fileChooser = new JFileChooser();
        // Atur title dari fileChooser
        fileChooser.setDialogTitle("Simpan Data ke File");
        // Atur filter dari fileChooser
        fileChooser.setFileFilter(new FileNameExtensionFilter("File Teks", "txt"));
        
        // Variable userSelection untuk menyimpan nilai dari fileChooser
        int userSelection = fileChooser.showSaveDialog(this.biodataFrame);

        // Jika userSelection bernilai opsi approve
        if (userSelection == JFileChooser.APPROVE_OPTION) {
            // Instansiasi FileWriter dengan nama writer
            try (FileWriter writer = new FileWriter(fileChooser.getSelectedFile())){
                for (Biodata biodata : biodataList){
                    String line = String.format(
                            "%s, %s, %s, %s %n",
                            biodata.getNama(),
                            biodata.getNoTelepon(),
                            biodata.getJenisKelamin(),
                            biodata.getAlamat()
                    );
                    System.out.print(line);
                    writer.write(line);
            };
            
                // Tampilkan message dialog pada komponen dari parameter 1 dan pesan pada
                // parameter 2 dengan title pada parameter 3 dan jenis pesan pada parameter 4
                JOptionPane.showMessageDialog(this.biodataFrame, "Data berhasil disimpan ke file",
                        "Perhatian",
                        JOptionPane.INFORMATION_MESSAGE);
            } catch (IOException ex) {
                // Tampilkan error pada console
                ex.printStackTrace();
            }
        } 
    // Jika confirmation bernilai no
    } else {
        // Panggil method showAlertFailed pada biodataFrame dengan parameter "tidak disimpan ke file"
        this.biodataFrame.showAlertFailed("tidak disimpan ke file!");
      }
  }
}
