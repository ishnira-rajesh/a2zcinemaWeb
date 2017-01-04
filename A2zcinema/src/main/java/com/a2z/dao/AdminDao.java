package com.a2z.dao;

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

public interface AdminDao {
	public LatestNews saveLatestNews(LatestNews latestNews);
	public List<?> adminFindAllUsers(); 
	public List<?> getLatestNews(); 
	public Long deleteLatestNews(Long latestNeswsId); 
	public LatestEvents saveLatestEvents(LatestEvents latestEvents);
	public List<?> getLatestEvents();
	public Long deleteLatestEvent(Long latestEventId);
	public LatestMovieNews saveLatestMoviesNews(LatestMovieNews latestMovieNews);
	public List<?> getLatestMoviesNews();
	public Long deleteLatestMoviesNews(Long latestMovieId);
	public LatestAuditionNews saveLatestAuditionNews(LatestAuditionNews latestAuditionNews);
	public List<?> getLatestAuditionNews();
	public Long deleteLatestAuditionNews(Long latestAuditionId);
	public CelibrityImages uploadCelibrityImage(CelibrityImages celibrityImages);
	public List<?> getCelibrityImage();
	public Long deleteCelibrityImage(long celibrityImageId);
	public CelibrityPadMemberImage uploadCelibrityPadMemberImage(CelibrityPadMemberImage celibrityPadMemberImage);
	public PadMemberImages uploadCelibrityPadMemberImageTwo(PadMemberImages padMemberImages);
	public List<?> getCelibrityPadMenberImage();
	public List<?> getCelibrityPadMenberImageTwo();
	public Long deleteCelibrityPadMemberImage(long celibrityPadImageId);
	public Long deleteCelibrityPadMemberImageTwo(long padmemberImageId);
	public LatestPosterPhoto uploadLatestPosterImage(LatestPosterPhoto latestPosterPhoto);
	public List<?> getLatestPosterImage();
	public Long deleteLatestPosterImage(long posterImageId);
	public MovieTrailer uploadMovieTrailerImage(MovieTrailer movieTrailer);
	public List<?> getMovieTrailerImage();
	public Long deleteMovieTrailerImage(long movieTrailerImageId);
	
	public GifPhoto uploadGifImage(GifPhoto gifPhoto);
	public List<?> getGifImage();
	public Long deleteGifImage(long gifImageId);
	
	public CrowdFunding saveCrowdFunding(CrowdFunding crowdFunding);
	public List<?> getCrowdFunding();
	public Long deleteCrowdFunding(long crowdFundingId);
	
	public MovieDistribution saveMovieDistribution(MovieDistribution movieDistribution);
	public List<?> getMovieDistribution();
	public Long deleteMovieDistributionAdmin(long movieDistributionId);
	public User getUserByUserId(long userId);
	

	

}
