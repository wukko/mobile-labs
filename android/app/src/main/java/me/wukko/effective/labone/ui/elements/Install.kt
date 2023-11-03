package me.wukko.effective.labone.ui.elements

import android.content.Context
import android.widget.Toast
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import me.wukko.effective.labone.R
import me.wukko.effective.labone.ui.theme.InstallButtonStyle
import me.wukko.effective.labone.ui.theme.accentYellow

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
            Text(
                text = stringResource(R.string.button_install),
                style = InstallButtonStyle
            )
        }
    )
}

@Preview
@Composable
private fun InstallButtonPreview() {
    InstallButton(context = LocalContext.current)
}