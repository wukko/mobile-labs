package me.wukko.effective.labone.ui.elements

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.absoluteOffset
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import me.wukko.effective.labone.R
import me.wukko.effective.labone.ui.screenData.toImageRes
import me.wukko.effective.labone.ui.theme.GameLogoBoxBorder
import me.wukko.effective.labone.ui.theme.HorizontalPadding
import me.wukko.effective.labone.ui.theme.Typography
import me.wukko.effective.labone.ui.theme.backgroundTint

@Composable
fun GameBanner(
    banner: String,
    logo: String,
    text: String,
    rating: String
) {
    Column(
        verticalArrangement = Arrangement.spacedBy((-32).dp),
        modifier = Modifier
            .fillMaxWidth()
            .background(Color.Transparent)
    ) {
        Box {
            Image(
                painter = painterResource(banner.toImageRes()),
                contentDescription = "Game banner",
                contentScale = ContentScale.Crop,
                modifier = Modifier
                    .height(330.dp)
                    .fillMaxSize()
            )
        }
        Column(
            verticalArrangement = Arrangement.spacedBy((-100).dp),
            modifier = Modifier
                .fillMaxWidth()
        ) {
            Column(
                modifier = Modifier
                    .clip(
                        RoundedCornerShape(
                            topStart = HorizontalPadding,
                            topEnd = HorizontalPadding
                        )
                    )
                    .background(backgroundTint)
                    .fillMaxWidth()
                    .height(75.dp)
                    .absoluteOffset(y = 14.dp)
                    .padding(start = 134.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text = text,
                    style = Typography.titleLarge
                )
                Row(
                    horizontalArrangement = Arrangement.spacedBy(10.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Image(
                        painter = painterResource(id = R.drawable.stars),
                        contentDescription = "stars",
                        modifier = Modifier
                            .width(80.dp)
                            .height(13.dp)
                    )
                    Text(
                        text = rating,
                        style = Typography.labelSmall
                    )
                }
            }
            LogoBox(logo)
        }

    }
}
@Composable
fun LogoBox(
    logo: String
) {
    val cornerRadius = 15.dp
    Box(
        modifier = Modifier.padding(horizontal = HorizontalPadding)
    ) {
        Box(
            modifier = Modifier
                .size(100.dp)
                .clip(RoundedCornerShape(cornerRadius))
                .background(Color.Black)
                .border(BorderStroke(2.dp, GameLogoBoxBorder), RoundedCornerShape(cornerRadius))
        ) {
            Image(
                painter = painterResource(logo.toImageRes()),
                contentDescription = "logo",
                modifier = Modifier
                    .fillMaxSize()
                    .padding(HorizontalPadding)
            )
        }
    }
}