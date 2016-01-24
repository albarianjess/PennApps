package babyllama.pennapps;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    // Go to Find Shelter
    public void findShelter(View view) {
        Intent intent = new Intent(this, Main2Activity.class);
        startActivity(intent);
    }

}



