package com.dexterous.flutterlocalnotifications;

import androidx.test.rule.ActivityTestRule;

import com.example.ich_mache_es_richtig_richtig_oder.MainActivity;
import dev.flutter.plugins.e2e.FlutterRunner;
import org.junit.Rule;
import org.junit.runner.RunWith;

@RunWith(FlutterRunner.class)
public class MainActivityTest {
    @Rule
    public ActivityTestRule<MainActivity> rule = new ActivityTestRule<>(MainActivity.class);
}
