package babyllama.pennapps;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class LongmontActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_longmont);
    }

    // Go to Dogs
    public void goToDogs(View view) {
        Intent intent = new Intent(this, DogActivity.class);
        startActivity(intent);
    }
    public void goToCats(View view) {
        Intent intent = new Intent(this, CatActivity.class);
        startActivity(intent);
    }
    public void goToSmall(View view) {
        Intent intent = new Intent(this, SmallActivity.class);
        startActivity(intent);
    }
}
