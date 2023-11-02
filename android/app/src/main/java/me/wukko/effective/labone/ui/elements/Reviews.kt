package me.wukko.effective.labone.ui.elements

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.absoluteOffset
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Divider
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import me.wukko.effective.labone.R
import me.wukko.effective.labone.ui.screenData.UserReview
import me.wukko.effective.labone.ui.screenData.fakeJSONData
import me.wukko.effective.labone.ui.screenData.parseScreenInfo
import me.wukko.effective.labone.ui.screenData.toImageRes
import me.wukko.effective.labone.ui.theme.HorizontalPadding
import me.wukko.effective.labone.ui.theme.HugeRatingStyle
import me.wukko.effective.labone.ui.theme.SeparatorLine
import me.wukko.effective.labone.ui.theme.Typography

@Composable
fun ReviewsBlock(
    userReviews: List<UserReview>,
    rating: Double,
    rateCount: String
) {
    Column(
        verticalArrangement = Arrangement.spacedBy(12.dp),
        modifier = Modifier
            .padding(horizontal = HorizontalPadding)
    ) {
        Text(
            text = stringResource(R.string.reviews_title),
            style = Typography.titleMedium
        )
        ReviewsRating(
            rating = rating,
            rateCount = rateCount
        )
        ReviewsComments(userReviews)
    }
}

@Composable
fun ReviewsRating(
    rating: Double,
    rateCount: String
) {
    Row(
        horizontalArrangement = Arrangement.spacedBy(15.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = "$rating",
            style = HugeRatingStyle,
            modifier = Modifier.absoluteOffset(y = (-4).dp)
        )
        Column(
            verticalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier.fillMaxHeight()
        ) {
            Image(
                painter = painterResource(id = R.drawable.stars),
                contentDescription = "stars",
                modifier = Modifier
                    .width(90.dp)
                    .height(14.dp)
            )
            print(R.drawable.stars)
            Text(
                text = "$rateCount ${stringResource(R.string.reviews_count)}",
                style = Typography.labelMedium
            )
        }
    }
}

@Composable
fun ReviewsComments(userReviews: List<UserReview>) {
    Column(
        verticalArrangement = Arrangement.spacedBy(25.dp),
        modifier = Modifier.padding(vertical = 10.dp)
    ) {
        userReviews.forEach { item ->
            ReviewComment(
                profilePic = item.profilePic,
                name = item.name,
                date = item.date,
                text = item.text
            )
            if (item != userReviews.last()) {
                Divider(color = SeparatorLine, thickness = 1.dp)
            }
        }
    }
}

@Composable
fun ReviewComment(
    profilePic: String,
    name: String,
    date: String,
    text: String
) {
    Column(
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Image(
                painter = painterResource(profilePic.toImageRes()),
                contentDescription = "user pic",
                modifier = Modifier
                    .size(36.dp)
                    .clip(CircleShape)
            )
            Column(
                verticalArrangement = Arrangement.spacedBy(7.dp)
            ) {
                Text(
                    text = name,
                    style = Typography.titleSmall
                )
                Text(
                    text = date,
                    style = Typography.labelMedium
                )
            }
        }
        Text(
            text = text,
            style = Typography.bodyMedium
        )
    }
}

@Preview(
    heightDp = 50
)
@Composable
fun ReviewsRatingPreview() {
    ReviewsRating(rating = 4.9, rateCount = "12M")
}

@Preview(
    showBackground = true,
    backgroundColor = 0xFF000000
)
@Composable
fun ReviewsCommentsPreview() {
    ReviewsComments(userReviews = parseScreenInfo(fakeJSONData).reviews.userReviews)
}

@Preview
@Composable
fun ReviewsCommentPreview() {
    ReviewComment(
        profilePic = "fakeuser1",
        name = "John John",
        date = "February 31, 2034",
        text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    )
}