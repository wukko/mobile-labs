package me.wukko.effective.labone.ui.theme

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp
import me.wukko.effective.labone.R

val ModernistFamily = FontFamily(
    Font(R.font.modernist_regular, FontWeight.Normal),
    Font(R.font.modernist_bold, FontWeight.Bold)
)
val MonsterratFamily = FontFamily(
    Font(R.font.monsterrat_regular, FontWeight.Normal)
)
val MonsterratChipStyle = TextStyle(
    fontFamily = MonsterratFamily,
    fontSize = 11.sp,
    color = TextColorChip,
    fontWeight = FontWeight(500)
)
val InstallButtonStyle = TextStyle(
    fontFamily = ModernistFamily,
    fontSize = 20.sp,
    fontWeight = FontWeight(700),
    color = TextColorDark,
    letterSpacing = 0.6.sp
)
val HugeRatingStyle = TextStyle(
    fontFamily = ModernistFamily,
    fontSize = 48.sp,
    color = TextColorBright,
    fontWeight = FontWeight(700)
)

val Typography = Typography(
    titleLarge = TextStyle(
        fontFamily = ModernistFamily,
        fontSize = 20.sp,
        color = TextColorBright,
        lineHeight = 26.sp,
        fontWeight = FontWeight(700),
        letterSpacing = 0.5.sp
    ),
    titleMedium = TextStyle(
        fontFamily = ModernistFamily,
        fontSize = 18.sp,
        color = TextColorBright,
        fontWeight = FontWeight(700),
        letterSpacing = 0.5.sp
    ),
    titleSmall = TextStyle(
        fontFamily = ModernistFamily,
        fontSize = 16.sp,
        color = TextColorBright,
        letterSpacing = 0.5.sp
    ),
    bodyMedium = TextStyle(
        fontFamily = ModernistFamily,
        fontSize = 14.sp,
        color = TextColorBody,
        lineHeight = 21.sp
    ),
    labelSmall = TextStyle(
        fontFamily = ModernistFamily,
        fontSize = 12.sp,
        color = TextColorFaint,
        letterSpacing = 0.5.sp
    ),
    labelMedium = TextStyle(
        fontFamily = ModernistFamily,
        fontSize = 12.sp,
        color = TextColorSub,
        letterSpacing = 0.5.sp
    )
)