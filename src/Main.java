import gui.DangKy;
import gui.DangNhap;
import gui.TrangChu;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import controllers.*;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        var dialog = new DangNhap();
        dialog.showAndWait();
        if (!dialog.isSuccess()) {
            return;
        }
        primaryStage.setTitle("Hello World");
        primaryStage.setScene(new Scene(new TrangChu()));
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
