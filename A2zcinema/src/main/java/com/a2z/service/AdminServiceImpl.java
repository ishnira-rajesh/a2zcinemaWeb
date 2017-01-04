package com.a2z.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2z.dao.AdminDao;
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

@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDao adminDao;

	@Override
	public LatestNews saveLatestNews(LatestNewsTo latestNewsTo) {
		LatestNews latestNews = new LatestNews();
		latestNews.setNewsHeading(latestNewsTo.getNewsHeading());
		latestNews.setNewsUrl(latestNewsTo.getNewsUrl());
		adminDao.saveLatestNews(latestNews);
 		return latestNews;
	}
	
	@Override
	public List<?> adminFindAllUsers() {
		return adminDao.adminFindAllUsers();
	}

	@Override
	public List<?> getLatestNews() {
		// TODO Auto-generated method stub
		return adminDao.getLatestNews();
	}

	@Override
	public Long deleteLatestNews(Long latestNeswsId) {
		// TODO Auto-generated method stub
		return adminDao.deleteLatestNews(latestNeswsId);
	}

	@Override
	public LatestEvents saveLatestEvents(LatestEventsTo latestEventsTo) {
		LatestEvents latestEvents = new LatestEvents();
		latestEvents.setEventHeading(latestEventsTo.getEventHeading());
		latestEvents.setEventUrl(latestEventsTo.getEventUrl());
		adminDao.saveLatestEvents(latestEvents);
		return latestEvents;
	}

	@Override
	public List<?> getLatestEvents() {
		// TODO Auto-generated method stub
		return adminDao.getLatestEvents();
	}

	@Override
	public Long deleteLatestEvent(Long latestEventId) {
		// TODO Auto-generated method stub
		return adminDao.deleteLatestEvent(latestEventId);
	}

	@Override
	public LatestMovieNews saveLatestMoviesNews(LatestMovieNewsTo latestMovieNewsTo) {
		LatestMovieNews latestMovieNews = new LatestMovieNews();
		latestMovieNews.setMovieHeading(latestMovieNewsTo.getMovieHeading());
		latestMovieNews.setMovieUrl(latestMovieNewsTo.getMovieUrl());
		adminDao.saveLatestMoviesNews(latestMovieNews);
		return latestMovieNews;
	}

	@Override
	public List<?> getLatestMoviesNews() {
		// TODO Auto-generated method stub
		return adminDao.getLatestMoviesNews();
	}

	@Override
	public Long deleteLatestMoviesNews(Long latestMovieId) {
		// TODO Auto-generated method stub
		return adminDao.deleteLatestMoviesNews(latestMovieId);
	}

	@Override
	public LatestAuditionNews saveLatestAuditionNews(LatestAuditionNewsTo latestAuditionNewsTo) {
		LatestAuditionNews latestAuditionNews = new LatestAuditionNews();
		latestAuditionNews.setAuditionHeading(latestAuditionNewsTo.getAuditionHeading());
		latestAuditionNews.setAuditionUrl(latestAuditionNewsTo.getAuditionUrl());
		adminDao.saveLatestAuditionNews(latestAuditionNews);
		return latestAuditionNews;
	}

	@Override
	public List<?> getLatestAuditionNews() {
		// TODO Auto-generated method stub
		return adminDao.getLatestAuditionNews();
	}

	@Override
	public Long deleteLatestAuditionNews(Long latestAuditionId) {
		// TODO Auto-generated method stub
		return adminDao.deleteLatestAuditionNews(latestAuditionId);
	}

	@Override
	public CelibrityImages uploadCelibrityImage(CelibrityImagesTo celibrityImagesTo) {
		CelibrityImages celibrityImages = new CelibrityImages();
		celibrityImages.setCelibrityName(celibrityImagesTo.getCelibrityName());
		celibrityImages.setCelibrityImageName(celibrityImagesTo.getCelibrityImageName());
		adminDao.uploadCelibrityImage(celibrityImages);
		return celibrityImages;
	}

	@Override
	public List<?> getCelibrityImage() {
		return adminDao.getCelibrityImage();
	}

	@Override
	public Long deleteCelibrityImage(long celibrityImageId) {
		// TODO Auto-generated method stub
		return adminDao.deleteCelibrityImage(celibrityImageId);
	}

	@Override
	public CelibrityPadMemberImage uploadCelibrityPadMemberImage(CelibrityPadMemberImageTo celibrityPadMemberImageTo) {
		CelibrityPadMemberImage celibrityPadMemberImage = new CelibrityPadMemberImage();
		celibrityPadMemberImage.setCelibrityPadName(celibrityPadMemberImageTo.getCelibrityPadName());
		celibrityPadMemberImage.setCelibrityPadImageName(celibrityPadMemberImageTo.getCelibrityPadImageName());
		adminDao.uploadCelibrityPadMemberImage(celibrityPadMemberImage);
		return celibrityPadMemberImage;
	}

	@Override
	public PadMemberImages uploadCelibrityPadMemberImageTwo(PadMemberImagesTo padMemberImagesTo) {
		PadMemberImages padMemberImages = new PadMemberImages();
		padMemberImages.setPadmemberName(padMemberImagesTo.getPadmemberName());
		padMemberImages.setPadmemberImageName(padMemberImagesTo.getPadmemberImageName());
		adminDao.uploadCelibrityPadMemberImageTwo(padMemberImages);
		return padMemberImages;
	}

	@Override
	public List<?> getCelibrityPadMenberImage() {
		// TODO Auto-generated method stub
		return adminDao.getCelibrityPadMenberImage();
	}

	@Override
	public List<?> getCelibrityPadMenberImageTwo() {
		// TODO Auto-generated method stub
		return adminDao.getCelibrityPadMenberImageTwo();
	}

	@Override
	public Long deleteCelibrityPadMemberImage(long celibrityPadImageId) {
		// TODO Auto-generated method stub
		return adminDao.deleteCelibrityPadMemberImage(celibrityPadImageId);
	}

	@Override
	public Long deleteCelibrityPadMemberImageTwo(long padmemberImageId) {
		// TODO Auto-generated method stub
		return adminDao.deleteCelibrityPadMemberImageTwo(padmemberImageId);
	}

	@Override
	public LatestPosterPhoto uploadLatestPosterImage(LatestPosterPhotoTo latestPosterPhotoTo) {
		LatestPosterPhoto latestPosterPhoto = new LatestPosterPhoto();
		latestPosterPhoto.setPosterName(latestPosterPhotoTo.getPosterName());
		latestPosterPhoto.setPosterImageName(latestPosterPhotoTo.getPosterImageName());
		adminDao.uploadLatestPosterImage(latestPosterPhoto);
		return latestPosterPhoto;
	}

	@Override
	public List<?> getLatestPosterImage() {
		// TODO Auto-generated method stub
		return adminDao.getLatestPosterImage();
	}

	@Override
	public Long deleteLatestPosterImage(long posterImageId) {
		// TODO Auto-generated method stub
		return adminDao.deleteLatestPosterImage(posterImageId);
	}

	@Override
	public MovieTrailer uploadMovieTrailerImage(MovieTrailerTo movieTrailerTo) {
		MovieTrailer movieTrailer = new MovieTrailer();
		movieTrailer.setMovieTrailerName(movieTrailerTo.getMovieTrailerName());
		movieTrailer.setMovieTrailerImageName(movieTrailerTo.getMovieTrailerImageName());
		movieTrailer.setMovieTrailerUrl(movieTrailerTo.getMovieTrailerUrl());
		adminDao.uploadMovieTrailerImage(movieTrailer);
		return movieTrailer;
	}

	@Override
	public List<?> getMovieTrailerImage() {
		// TODO Auto-generated method stub
		return adminDao.getMovieTrailerImage();
	}

	@Override
	public Long deleteMovieTrailerImage(long movieTrailerImageId) {
		// TODO Auto-generated method stub
		return adminDao.deleteMovieTrailerImage(movieTrailerImageId);
	}
	
	@Override
	public GifPhoto uploadGifImage(GifPhotoTo gifPhotoTo) {
		GifPhoto gifPhoto = new GifPhoto();
		gifPhoto.setGifName(gifPhotoTo.getGifName());
		gifPhoto.setGifImageName(gifPhotoTo.getGifImageName());
		gifPhoto.setGifImageUrl(gifPhotoTo.getGifImageUrl());
		adminDao.uploadGifImage(gifPhoto);
		return gifPhoto;
	}

	@Override
	public List<?> getGifImage() {
		// TODO Auto-generated method stub
		return adminDao.getGifImage();
	}

	@Override
	public Long deleteGifImage(long gifImageId) {
		// TODO Auto-generated method stub
		return adminDao.deleteGifImage(gifImageId);
	}
	
	@Override
	public CrowdFunding saveCrowdFunding(CrowdFundingTo crowdFundingTo) {
		CrowdFunding crowdFunding = new CrowdFunding();
		crowdFunding.setMovieName(crowdFundingTo.getMovieName());
		crowdFunding.setDirectorName(crowdFundingTo.getDirectorName());
		crowdFunding.setProHouseName(crowdFundingTo.getProHouseName());
		crowdFunding.setProducerName(crowdFundingTo.getProducerName());
		crowdFunding.setStarCast(crowdFundingTo.getStarCast());
		crowdFunding.setContactPersonName(crowdFundingTo.getContactPersonName());
		crowdFunding.setContactNo(crowdFundingTo.getContactNo());
		crowdFunding.setEnquiryEmail(crowdFundingTo.getEnquiryEmail());
		crowdFunding.setTotalBudget(crowdFundingTo.getTotalBudget());
		crowdFunding.setAppealeAmount(crowdFundingTo.getAppealeAmount());
		crowdFunding.setRemainingAmount(crowdFundingTo.getRemainingAmount());
		adminDao.saveCrowdFunding(crowdFunding);
		return crowdFunding;
	}

	@Override
	public List<?> getCrowdFunding() {
		// TODO Auto-generated method stub
		return adminDao.getCrowdFunding();
	}

	@Override
	public Long deleteCrowdFunding(long crowdFundingId) {
		// TODO Auto-generated method stub
		return adminDao.deleteCrowdFunding(crowdFundingId);
	}
	
	@Override
	public MovieDistribution saveMovieDistribution(MovieDistributionTo movieDistributionTo) {
		MovieDistribution distribution = new MovieDistribution();
		distribution.setMultiplexName(movieDistributionTo.getMultiplexName());
		distribution.setTheaterOwnerName(movieDistributionTo.getTheaterOwnerName());
		distribution.setTheaterAddress(movieDistributionTo.getTheaterAddress());
		distribution.setTheaterCity(movieDistributionTo.getTheaterCity());
		distribution.setTheaterState(movieDistributionTo.getTheaterState());
		distribution.setContactPersonName(movieDistributionTo.getContactPersonName());
		distribution.setContactNo(movieDistributionTo.getContactNo());
		distribution.setEnquiryEmail(movieDistributionTo.getEnquiryEmail());
		distribution.setTheaterRent(movieDistributionTo.getTheaterRent());
		adminDao.saveMovieDistribution(distribution);
		return distribution;
	}

	@Override
	public List<?> getMovieDistribution() {
		// TODO Auto-generated method stub
		return adminDao.getMovieDistribution();
	}

	@Override
	public Long deleteMovieDistributionAdmin(long movieDistributionId) {
		// TODO Auto-generated method stub
		return adminDao.deleteMovieDistributionAdmin(movieDistributionId);
	}

	@Override
	public User getUserByUserId(long userId) {
		// TODO Auto-generated method stub
		return adminDao.getUserByUserId(userId);
	}
	
	
	
	
	
	
	

}
