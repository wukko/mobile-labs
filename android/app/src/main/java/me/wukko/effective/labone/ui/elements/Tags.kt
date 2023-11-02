package me.wukko.effective.labone.ui.elements

import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.AssistChip
import androidx.compose.material3.AssistChipDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import me.wukko.effective.labone.ui.theme.ChipBodyColor
import me.wukko.effective.labone.ui.theme.HorizontalPadding
import me.wukko.effective.labone.ui.theme.MonsterratChipStyle

@Composable
fun TagsRow(
    tags: List<String>
) {
    Row(
        modifier = Modifier
            .horizontalScroll(rememberScrollState())
            .fillMaxWidth()
            .padding(horizontal = HorizontalPadding),
        horizontalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        tags.forEach { tag ->
            TagChip(tag)
        }
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
                style = MonsterratChipStyle
            )
        }
    )
}