package babyllama.pennapps;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class Main2Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
    }

    // Go to Shelter
    public void goToShelter(View view) {
        Intent intent = new Intent(this, ShelterActivity.class);
        startActivity(intent);
    }

    // Go to Shelter
    public void goToLongmont(View view) {
        Intent intent = new Intent(this, LongmontActivity.class);
        startActivity(intent);
    }
}
