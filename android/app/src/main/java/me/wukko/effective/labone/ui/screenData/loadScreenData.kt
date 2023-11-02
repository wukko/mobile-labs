package me.wukko.effective.labone.ui.screenData

import org.json.JSONObject

data class GamePlay(
    val banner: String,
    val video: String
)

data class UserReview(
    val profilePic: String,
    val name: String,
    val date: String,
    val text: String
)

data class ReviewInfo(
    val rating: Double,
    val rateCount: String,
    val userReviews: List<UserReview>
)

data class GameInfo(
    val title: String,
    val tags: List<String>,
    val description: String,
    val banner: String,
    val logo: String,
    val gameplays: List<GamePlay>,
    val reviews: ReviewInfo
)

fun parseScreenInfo(jsonString: String): GameInfo {
    val jsonObject = JSONObject(jsonString)

    val title = jsonObject.getString("title")
    val description = jsonObject.getString("description")
    val banner = jsonObject.getString("banner")
    val logo = jsonObject.getString("logo")

    val tagsArray = jsonObject.getJSONArray("tags")
    val tags = ArrayList<String>()
    for (i in 0 until tagsArray.length()) {
        tags.add(tagsArray.getString(i))
    }


    val gameplaysArray = jsonObject.getJSONArray("gameplays")
    val gameplays = ArrayList<GamePlay>()
    for (i in 0 until gameplaysArray.length()) {
        val gameplayObject = gameplaysArray.getJSONObject(i)
        val banner = gameplayObject.getString("banner")
        val video = gameplayObject.getString("video")
        gameplays.add(GamePlay(banner, video))
    }

    val reviewsObject = jsonObject.getJSONObject("reviews")
    val rating = reviewsObject.getDouble("rating")
    val rateCount = reviewsObject.getString("rateCount")

    val userReviewsArray = reviewsObject.getJSONArray("userReviews")
    val userReviews = ArrayList<UserReview>()
    for (i in 0 until userReviewsArray.length()) {
        val reviewObject = userReviewsArray.getJSONObject(i)
        val profilePic = reviewObject.getString("profilePic")
        val name = reviewObject.getString("name")
        val date = reviewObject.getString("date")
        val text = reviewObject.getString("text")
        userReviews.add(UserReview(profilePic, name, date, text))
    }

    val reviewInfo = ReviewInfo(rating, rateCount, userReviews)

    return GameInfo(title, tags, description, banner, logo, gameplays, reviewInfo)
}
