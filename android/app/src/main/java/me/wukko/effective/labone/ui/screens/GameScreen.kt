package me.wukko.effective.labone.ui.screens

import android.annotation.SuppressLint
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import me.wukko.effective.labone.ui.elements.GameBanner
import me.wukko.effective.labone.ui.elements.GameplayRow
import me.wukko.effective.labone.ui.elements.InstallButton
import me.wukko.effective.labone.ui.elements.ReviewsBlock
import me.wukko.effective.labone.ui.elements.TagsRow
import me.wukko.effective.labone.ui.screenData.GameInfo
import me.wukko.effective.labone.ui.theme.AppTheme
import me.wukko.effective.labone.ui.theme.HorizontalPadding
import me.wukko.effective.labone.ui.theme.Typography
import me.wukko.effective.labone.ui.theme.backgroundTint

@SuppressLint("UnusedMaterial3ScaffoldPaddingParameter")
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GameScreen(
    screenInfo: GameInfo
) {
    AppTheme {
        Scaffold (
            containerColor = backgroundTint,
            bottomBar = {
                Box(
                    modifier = Modifier
                        .padding(horizontal = HorizontalPadding, vertical = 30.dp)
                ) {
                    InstallButton(LocalContext.current)
                }
            }
        ) {
            Surface(
                modifier = Modifier.fillMaxSize()
            ) {
                Column(
                    verticalArrangement = Arrangement.spacedBy(20.dp),
                    modifier = Modifier.verticalScroll(rememberScrollState())
                ) {
                    GameBanner(
                        banner = screenInfo.banner,
                        logo = screenInfo.logo,
                        text = screenInfo.title,
                        rating = screenInfo.reviews.rateCount
                    )
                    TagsRow(screenInfo.tags)
                    Text(
                        text = screenInfo.description,
                        style = Typography.bodyMedium,
                        modifier = Modifier.padding(horizontal = HorizontalPadding)
                    )
                    GameplayRow(screenInfo.gameplays)
                    ReviewsBlock(
                        userReviews = screenInfo.reviews.userReviews,
                        rating = screenInfo.reviews.rating,
                        rateCount = screenInfo.reviews.rateCount
                    )
                    Spacer(modifier = Modifier.padding(64.dp))
                }
            }
        }
    }
}
