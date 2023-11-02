package me.wukko.effective.labone.ui.screenData

import androidx.annotation.DrawableRes
import me.wukko.effective.labone.R

@DrawableRes
fun String.toImageRes() : Int =
    when (this) {
        "fakeuser1" -> {
            R.drawable.fakeuser1
        }
        "fakeuser2" -> {
            R.drawable.fakeuser2
        }
        "banner" -> {
            R.drawable.banner
        }
        "gamelogo" -> {
            R.drawable.gamelogo
        }
        "gameplay1" -> {
            R.drawable.gameplay1
        }
        "gameplay2" -> {
            R.drawable.gameplay2
        }
        else -> {
            R.drawable.gamelogo
        }
    }

val fakeJSONData = """{
        "title": "DoTA 2",
        "banner": "banner",
        "logo": "gamelogo",
        "tags": ["MOBA", "Multiplayer", "Stragedy", "Something Else", "Tags should scroll"],
        "description": "Dota 2 is a multiplayer online battle arena (MOBA) game which has two teams of five players compete to collectively destroy a large structure defended by the opposing team known as the 'Ancient', whilst defending their own.",
        "gameplays": [
            {
                "banner": "gameplay1",
                "video": "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
            },
            {
                "banner": "gameplay2",
                "video": "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
            },
            {
                "banner": "gameplay1",
                "video": "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
            }
        ],
        "reviews": {
            "rating": 4.9,
            "rateCount": "70M",
            "userReviews": [
                {
                    "profilePic": "fakeuser2",
                    "name": "Auguste Conte",
                    "date": "February 14, 2019",
                    "text": "Once you start to learn its secrets, there’s a wild and exciting variety of play here that’s unmatched, even by its peers."
                },
                {
                    "profilePic": "fakeuser1",
                    "name": "Jang Marcelino",
                    "date": "February 14, 2019",
                    "text": "Once you start to learn its secrets, there’s a wild and exciting variety of play here that’s unmatched, even by its peers."
                },
                {
                    "profilePic": "fakeuser2",
                    "name": "One More User",
                    "date": "February 14, 2019",
                    "text": "Once you start to learn its secrets, there’s a wild and exciting variety of play here that’s unmatched, even by its peers."
                }
            ]
        }
    }"""