package gui;

import gui.base.BaseControl;
import javafx.fxml.FXML;
import javafx.scene.layout.FlowPane;

import java.net.URL;
import java.util.ResourceBundle;

public class TrangChu extends BaseControl {
    @FXML
    private FlowPane flowpaneMain;
    public TrangChu() {
        super("TrangChu.fxml");
        refresh();
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }

    private void refresh() {
        flowpaneMain.getChildren().add(new SanPhamCard());
        flowpaneMain.getChildren().add(new SanPhamCard());
        flowpaneMain.getChildren().add(new SanPhamCard());
        flowpaneMain.getChildren().add(new SanPhamCard());
        flowpaneMain.getChildren().add(new SanPhamCard());
        flowpaneMain.getChildren().add(new SanPhamCard());
        flowpaneMain.getChildren().add(new SanPhamCard());
        flowpaneMain.getChildren().add(new SanPhamCard());
    }
}
