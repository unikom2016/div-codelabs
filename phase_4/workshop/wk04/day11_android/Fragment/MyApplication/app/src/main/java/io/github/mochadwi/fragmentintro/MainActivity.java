package io.github.mochadwi.fragmentintro;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    private Button btnFragment1;
    private Button btnFragment2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initView();

        changeFragment(btnFragment1);

        btnFragment1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                changeFragment(view);
            }
        });

        btnFragment2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                changeFragment(view);
            }
        });
    }

    private void initView() {
        btnFragment1 = (Button) findViewById(R.id.btn_fragment_1);
        btnFragment2 = (Button) findViewById(R.id.btn_fragment_2);
    }

    private void changeFragment(View view) {
        Fragment fragment = null;
        if (view == btnFragment1) {
            fragment = new SatuFragment();
        }
        if (view == btnFragment2) {
            fragment = new DuaFragment();
        }

        FragmentManager fragmentManager = getSupportFragmentManager();
        fragmentManager.beginTransaction().replace(R.id.content_fragment, fragment).commit();
    }
}
