package com.a2z.service;

import java.util.List;

import com.a2z.model.CelibrityImages;
import com.a2z.model.CelibrityPadMemberImage;
import com.a2z.model.CrowdFunding;
import com.a2z.model.GifPhoto;
import com.a2z.model.LatestAuditionNews;
import com.a2z.model.LatestEvents;
import com.a2z.model.LatestMovieNews;
import com.a2z.model.LatestNews;
import com.a2z.model.LatestPosterPhoto;
import com.a2z.model.MovieDistribution;
import com.a2z.model.MovieTrailer;
import com.a2z.model.PadMemberImages;
import com.a2z.model.User;
import com.a2z.to.CelibrityImagesTo;
import com.a2z.to.CelibrityPadMemberImageTo;
import com.a2z.to.CrowdFundingTo;
import com.a2z.to.GifPhotoTo;
import com.a2z.to.LatestAuditionNewsTo;
import com.a2z.to.LatestEventsTo;
import com.a2z.to.LatestMovieNewsTo;
import com.a2z.to.LatestNewsTo;
import com.a2z.to.LatestPosterPhotoTo;
import com.a2z.to.MovieDistributionTo;
import com.a2z.to.MovieTrailerTo;
import com.a2z.to.PadMemberImagesTo;

public interface AdminService {

	public LatestNews saveLatestNews(LatestNewsTo latestNewsTo);
    public List<?> adminFindAllUsers();
	public List<?> getLatestNews();
	public Long deleteLatestNews(Long latestNeswsId);
	public LatestEvents saveLatestEvents(LatestEventsTo latestEventsTo);
	public List<?> getLatestEvents();
	public Long deleteLatestEvent(Long latestEventId);
	public LatestMovieNews saveLatestMoviesNews(LatestMovieNewsTo latestMovieNewsTo);
	public List<?> getLatestMoviesNews();
	public Long deleteLatestMoviesNews(Long latestMovieId);
	public LatestAuditionNews saveLatestAuditionNews(LatestAuditionNewsTo latestAuditionNewsTo);
	public List<?> getLatestAuditionNews();
	public Long deleteLatestAuditionNews(Long latestAuditionId);
	public CelibrityImages uploadCelibrityImage(CelibrityImagesTo celibrityImagesTo);
	public List<?> getCelibrityImage();
	public Long deleteCelibrityImage(long celibrityImageId);
	public CelibrityPadMemberImage uploadCelibrityPadMemberImage(CelibrityPadMemberImageTo celibrityPadMemberImageTo);
	public PadMemberImages uploadCelibrityPadMemberImageTwo(PadMemberImagesTo padMemberImagesTo);
	public List<?> getCelibrityPadMenberImage();
	public List<?> getCelibrityPadMenberImageTwo();
	public Long deleteCelibrityPadMemberImage(long celibrityPadImageId);
	public Long deleteCelibrityPadMemberImageTwo(long padmemberImageId);
	public LatestPosterPhoto uploadLatestPosterImage(LatestPosterPhotoTo latestPosterPhotoTo);
	public List<?> getLatestPosterImage();
	public Long deleteLatestPosterImage(long posterImageId);
	public MovieTrailer uploadMovieTrailerImage(MovieTrailerTo movieTrailerTo);
	public List<?> getMovieTrailerImage();
	public Long deleteMovieTrailerImage(long movieTrailerImageId);
	public GifPhoto uploadGifImage(GifPhotoTo gifPhotoTo);
	public List<?> getGifImage();
	public Long deleteGifImage(long gifImageId);
	public CrowdFunding saveCrowdFunding(CrowdFundingTo crowdFundingTo);
	public List<?> getCrowdFunding();
	public Long deleteCrowdFunding(long crowdFundingId);
	public MovieDistribution saveMovieDistribution(MovieDistributionTo movieDistributionTo);
	public List<?> getMovieDistribution();
	public Long deleteMovieDistributionAdmin(long movieDistributionId);
	public User getUserByUserId(long userId);

}
