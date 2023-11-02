package me.wukko.effective.labone.ui.elements

import androidx.compose.foundation.Image
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import me.wukko.effective.labone.ui.screenData.GamePlay
import me.wukko.effective.labone.ui.screenData.toImageRes
import me.wukko.effective.labone.ui.theme.HorizontalPadding

@Composable
fun GameplayItem(painter: Painter) {
    Image(
        painter = painter,
        contentDescription = "Gameplay",
        contentScale = ContentScale.FillHeight,
        modifier = Modifier
            .fillMaxSize()
            .clip(RoundedCornerShape(14.dp)),
    )
}
@Composable
fun GameplayRow(
    gameplays: List<GamePlay>
) {
    Row(
        modifier = Modifier
            .horizontalScroll(rememberScrollState())
            .height(140.dp)
            .fillMaxWidth()
            .padding(horizontal = HorizontalPadding),
        horizontalArrangement = Arrangement.spacedBy(HorizontalPadding)
    ) {
        gameplays.forEach { item ->
            GameplayItem(painterResource(item.banner.toImageRes()))
        }
    }
}