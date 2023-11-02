package me.wukko.effective.labone

import android.annotation.SuppressLint
import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.absoluteOffset
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AssistChip
import androidx.compose.material3.AssistChipDefaults
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color.Companion.Black
import androidx.compose.ui.graphics.Color.Companion.Transparent
import androidx.compose.ui.graphics.Color.Companion.White
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.view.WindowCompat
import me.wukko.effective.labone.ui.theme.AppTheme
import me.wukko.effective.labone.ui.theme.ChipBodyColor
import me.wukko.effective.labone.ui.theme.GameLogoBoxBorder
import me.wukko.effective.labone.ui.theme.HorizontalPadding
import me.wukko.effective.labone.ui.theme.TextColorBody
import me.wukko.effective.labone.ui.theme.TextColorBright
import me.wukko.effective.labone.ui.theme.TextColorChip
import me.wukko.effective.labone.ui.theme.TextColorDark
import me.wukko.effective.labone.ui.theme.TextColorFaint
import me.wukko.effective.labone.ui.theme.TextColorSub
import me.wukko.effective.labone.ui.theme.accentYellow
import me.wukko.effective.labone.ui.theme.backgroundTint

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        WindowCompat.setDecorFitsSystemWindows(window, false)

        setContent {
            GameScreen()
        }
    }
}

@SuppressLint("UnusedMaterial3ScaffoldPaddingParameter")
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GameScreen() {
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
                        verticalArrangement = Arrangement.spacedBy(HorizontalPadding),
                        modifier = Modifier.verticalScroll(rememberScrollState())

                    ) {
                        GameBanner(
                            painter = painterResource(id = R.drawable.banner),
                            contentDescription = "DoTA 2 Game Banner",
                            text = "DoTA 2"
                        )
                        TagsRow()
                        Text(
                            text = stringResource(R.string.dota_description),
                            color = TextColorBody,
                            fontSize = 12.sp,
                            lineHeight = 19.sp,
                            modifier = Modifier.padding(horizontal = HorizontalPadding)
                        )
                        GameplayRow()
                        ReviewsBlock()
                        Spacer(modifier = Modifier.padding(64.dp))
                    }
                }
        }
    }
}

@Composable
fun GameBanner(
    painter: Painter,
    contentDescription: String,
    text: String
) {
    Column(
        verticalArrangement = Arrangement.spacedBy((-32).dp),
        modifier = Modifier
            .fillMaxWidth()
            .background(Transparent)
    ) {
        Image(
            painter = painter,
            contentDescription = contentDescription,
            contentScale = ContentScale.Crop,
            modifier = Modifier
                .height(340.dp)
                .fillMaxSize()
        )
        Column(
            verticalArrangement = Arrangement.spacedBy((-100).dp),
            modifier = Modifier
                .fillMaxWidth()
        ) {
            Column(
                modifier = Modifier
                    .clip(RoundedCornerShape(topStart = HorizontalPadding, topEnd = HorizontalPadding))
                    .background(backgroundTint)
                    .fillMaxWidth()
                    .height(75.dp)
                    .absoluteOffset(y = 12.dp, x = 135.dp),
                verticalArrangement = Arrangement.spacedBy(5.dp)
            ) {
                Text(
                    text = text,
                    color = White,
                    fontSize = 20.sp,
                    lineHeight = 26.sp,
                    fontWeight = FontWeight(700),
                    letterSpacing = 0.5.sp,
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
                            .height(14.dp)
                    )
                    Text(
                        text = "12M",
                        color = TextColorFaint,
                        fontSize = 12.sp,
                        letterSpacing = 0.5.sp,
                    )
                }
            }
            LogoBox(painterResource(id = R.drawable.gamelogo))
        }

    }
}
@Composable
fun LogoBox(painter: Painter) {
    val cornerRadius = 15.dp
    Box(
        modifier = Modifier.absoluteOffset(x = HorizontalPadding)
    ) {
        Box(
            modifier = Modifier
                .size(100.dp)
                .clip(RoundedCornerShape(cornerRadius))
                .background(Black)
                .border(BorderStroke(2.dp, GameLogoBoxBorder), RoundedCornerShape(cornerRadius))
        ) {
            Image(
                painter = painter,
                contentDescription = "logo",
                modifier = Modifier
                    .fillMaxSize()
                    .padding(HorizontalPadding)
            )
        }
    }
}
@Composable
fun TagsRow() {
    Row(
        modifier = Modifier
            .horizontalScroll(rememberScrollState())
            .fillMaxWidth()
            .padding(horizontal = HorizontalPadding),
        horizontalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        TagChip("moba")
        TagChip("multiplayer")
        TagChip("stragedy")
        TagChip("something else")
        TagChip("one more")
    }
}
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TagChip(
    text: String
) {
    AssistChip(
        onClick = {},
        shape = RoundedCornerShape(100.dp),
        border = null,
        colors = AssistChipDefaults.assistChipColors(
            containerColor = ChipBodyColor
        ),
        label = {
            Text(
                text = text.uppercase(),
                color = TextColorChip,
                fontSize = 10.sp
            )
        }
    )
}
@Composable
fun GameplayItem(painter: Painter) {
    Image(
        painter = painter,
        contentDescription = "DoTA 2 Gameplay",
        contentScale = ContentScale.FillHeight,
        modifier = Modifier
            .fillMaxSize()
            .clip(RoundedCornerShape(14.dp)),
    )
}
@Composable
fun GameplayRow() {
    Row(
        modifier = Modifier
            .horizontalScroll(rememberScrollState())
            .height(140.dp)
            .fillMaxWidth()
            .padding(horizontal = HorizontalPadding),
        horizontalArrangement = Arrangement.spacedBy(HorizontalPadding)
    ) {
        GameplayItem(painterResource(id = R.drawable.gameplay1))
        GameplayItem(painterResource(id = R.drawable.gameplay2))
        GameplayItem(painterResource(id = R.drawable.gameplay1))
    }
}
@Composable
fun InstallButton(context: Context) {
    Button(
        modifier = Modifier
            .fillMaxWidth()
            .height(64.dp),
        shape = RoundedCornerShape(12.dp),
        colors = ButtonDefaults.buttonColors(containerColor = accentYellow),
        contentPadding = PaddingValues(16.dp),
        onClick = {
            Toast.makeText(context, "Install button pressed", Toast.LENGTH_SHORT)
                .show()
        },
        content = {
            Text(text = stringResource(R.string.button_install), fontSize = 20.sp, color = TextColorDark)
        }
    )
}
@Composable
fun ReviewsBlock() {
    Column(
        verticalArrangement = Arrangement.spacedBy(12.dp),
        modifier = Modifier
            .padding(horizontal = HorizontalPadding)
    ) {
        Text(
            text = stringResource(R.string.reviews_title),
            fontSize = 16.sp,
            fontWeight = FontWeight(700),
            color = TextColorBright
        )
        ReviewsRating()
        ReviewsComments()
    }
}
@Composable
fun ReviewsRating() {
    Row(
        horizontalArrangement = Arrangement.spacedBy(15.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = "4.9",
            fontSize = 48.sp,
            fontWeight = FontWeight(700),
            color = TextColorBright
        )
        Column(
            verticalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier.fillMaxHeight()
        ) {
            Image(
                painter = painterResource(id = R.drawable.stars),
                contentDescription = "stars",
                modifier = Modifier
                    .width(80.dp)
                    .height(14.dp)
            )
            Text(
                text = "12M Reviews",
                color = TextColorBody,
                fontSize = 12.sp,
                letterSpacing = 0.5.sp,
            )
        }
    }
}
@Composable
fun ReviewsComments() {
    Column() {
        ReviewComment()
    }
}
@Composable
fun ReviewComment() {
    Column(
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Image(
                painter = painterResource(id = R.drawable.gamelogo),
                contentDescription = "stars",
                modifier = Modifier.size(36.dp).clip(CircleShape)
            )
            Column(
                verticalArrangement = Arrangement.spacedBy(7.dp)
            ){
                Text(
                    text = "Auguste Conte",
                    color = TextColorBright,
                    fontSize = 16.sp,
                )
                Text(
                    text = "February 14, 2019",
                    color = TextColorSub,
                    fontSize = 12.sp,
                    letterSpacing = 0.5.sp,
                )
            }
        }
        Text(
            text = "“Once you start to learn its secrets, there’s a wild and exciting variety of play here that’s unmatched, even by its peers.”",
            fontSize = 12.sp,
            lineHeight = 20.sp,
            fontWeight = FontWeight(400),
            color = TextColorBody,
            letterSpacing = 0.5.sp
        )
    }
}
// TODO: Previews