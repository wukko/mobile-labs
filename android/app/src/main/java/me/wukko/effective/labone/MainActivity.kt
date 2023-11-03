package me.wukko.effective.labone

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.core.view.WindowCompat
import me.wukko.effective.labone.ui.screenData.fakeJSONData
import me.wukko.effective.labone.ui.screenData.parseScreenInfo
import me.wukko.effective.labone.ui.screens.GameScreen

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        WindowCompat.setDecorFitsSystemWindows(window, false)

        setContent {
            GameScreen(parseScreenInfo(fakeJSONData))
        }
    }
}
