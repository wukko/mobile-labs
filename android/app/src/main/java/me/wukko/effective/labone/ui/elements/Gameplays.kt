package me.wukko.effective.labone.ui.elements

import android.content.Context
import android.content.Intent
import android.net.Uri
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
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
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import me.wukko.effective.labone.ui.screenData.GamePlay
import me.wukko.effective.labone.ui.screenData.fakeJSONData
import me.wukko.effective.labone.ui.screenData.parseScreenInfo
import me.wukko.effective.labone.ui.screenData.toImageRes
import me.wukko.effective.labone.ui.theme.HorizontalPadding

@Composable
fun GameplayItem(
    banner: String,
    url: String,
    context: Context
) {
    Image(
        painter = painterResource(banner.toImageRes()),
        contentDescription = "Gameplay",
        contentScale = ContentScale.FillHeight,
        modifier = Modifier
            .fillMaxSize()
            .clip(RoundedCornerShape(14.dp))
            .clickable {
                val urlIntent = Intent(
                    Intent.ACTION_VIEW,
                    Uri.parse(url)
                )
                context.startActivity(urlIntent)
            },
    )
}

@Composable
fun GameplayRow(
    gameplays: List<GamePlay>,
    context: Context
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
            GameplayItem(
                banner = item.banner,
                url = item.video,
                context = context
            )
        }
    }
}

@Preview
@Composable
fun GameplayRowPreview() {
    GameplayRow(
        gameplays = parseScreenInfo(fakeJSONData).gameplays,
        context = LocalContext.current
    )
}

@Preview(
    heightDp = 140,
    widthDp = 240
)
@Composable
fun GameplayItemPreview() {
    val testItem = parseScreenInfo(fakeJSONData).gameplays.first()
    GameplayItem(
        banner = testItem.banner,
        url = testItem.video,
        context = LocalContext.current
    )
}