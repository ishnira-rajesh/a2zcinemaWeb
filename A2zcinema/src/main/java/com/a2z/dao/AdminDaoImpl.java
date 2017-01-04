package com.a2z.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;

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
import com.a2z.to.MovieTrailerTo;

@Repository("adminDao")
public class AdminDaoImpl extends AbstractDao<Integer, LatestNews> implements AdminDao {

	@Override
	public LatestNews saveLatestNews(LatestNews latestNews) {
		getSession().merge(latestNews);
		return latestNews;
	}

	@Override
	public List<?> adminFindAllUsers() {
		List<?> userdata = null;
		
		String query = " SELECT u.user_id,u.profession,u.actorType,u.backSupportTeam,u.regAgency,u.first_name,u.last_name,  "+
				" u.contact_no,u.email_id,pd.dob,a.pm_district,a.pm_state "+
				" FROM user u  "+
				" LEFT OUTER JOIN profile_details pd ON u.user_id = pd.user_id "+
				" LEFT OUTER JOIN address a ON u.user_id = a.user_id ";
		
		userdata = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return userdata;
	}

	@Override
	public List<?> getLatestNews() {
		List<?> lnews = null;
		
		String query = " SELECT ln.latest_nesws_id,ln.news_heading,ln.news_url "+
				       " FROM latest_news ln ORDER BY ln.latest_nesws_id DESC LIMIT 10 ";
		
		lnews = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return lnews;
	}

	@Override
	public Long deleteLatestNews(Long latestNeswsId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM latest_news WHERE latest_nesws_id=?")
				.setParameter(0,latestNeswsId).executeUpdate();
	}

	@Override
	public LatestEvents saveLatestEvents(LatestEvents latestEvents) {
		getSession().merge(latestEvents);
		return latestEvents;
	}

	@Override
	public List<?> getLatestEvents() {
        List<?> levent = null;
		
		String query = " SELECT le.latest_events_id,le.events_heading,le.events_url "+
				       " FROM latest_events le ORDER BY le.latest_events_id DESC LIMIT 10";
		
		levent = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return levent;
	}

	@Override
	public Long deleteLatestEvent(Long latestEventId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM latest_events WHERE latest_events_id=?")
				.setParameter(0,latestEventId).executeUpdate();
	}

	@Override
	public LatestMovieNews saveLatestMoviesNews(LatestMovieNews latestMovieNews) {
		getSession().merge(latestMovieNews);
		return latestMovieNews;
	}

	@Override
	public List<?> getLatestMoviesNews() {
		 List<?> movie = null;
			
			String query = " SELECT lmn.latest_movie_id,lmn.movie_heading,lmn.movie_url "+
					       " FROM latest_movie_news lmn ORDER BY lmn.latest_movie_id DESC LIMIT 10";
			
			movie = this.getSession().createSQLQuery(query)
					.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		    return movie;
	}

	@Override
	public Long deleteLatestMoviesNews(Long latestMovieId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM latest_movie_news WHERE latest_movie_id=?")
				.setParameter(0,latestMovieId).executeUpdate();
	}

	@Override
	public LatestAuditionNews saveLatestAuditionNews(LatestAuditionNews latestAuditionNews) {
		getSession().merge(latestAuditionNews);
		return latestAuditionNews;
	}

	@Override
	public List<?> getLatestAuditionNews() {
		 List<?> audi = null;
			
			String query = " SELECT lan.latest_audition_id,lan.audition_heading,lan.audition_url "+
						   " FROM latest_audition_news lan ORDER BY lan.latest_audition_id DESC LIMIT 10";
			
			audi = this.getSession().createSQLQuery(query)
					.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		    return audi;
	}

	@Override
	public Long deleteLatestAuditionNews(Long latestAuditionId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM latest_audition_news WHERE latest_audition_id=?")
				.setParameter(0,latestAuditionId).executeUpdate();
	}

	@Override
	public CelibrityImages uploadCelibrityImage(CelibrityImages celibrityImages) {
		getSession().merge(celibrityImages);
		return celibrityImages;
	}

	@Override
	public List<?> getCelibrityImage() {
      List<?> celi = null;
		
		String query = " SELECT ci.celibrity_image_id,ci.celibrity_name,ci.celibrity_image_name "+
					   " FROM celibrity_image ci ORDER BY ci.celibrity_image_id DESC LIMIT 5";
		
		celi = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return celi;  
	}

	@Override
	public Long deleteCelibrityImage(long celibrityImageId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM celibrity_image WHERE celibrity_image_id=?")
				.setParameter(0,celibrityImageId).executeUpdate();
	}

	@Override
	public CelibrityPadMemberImage uploadCelibrityPadMemberImage(CelibrityPadMemberImage celibrityPadMemberImage) {
		getSession().merge(celibrityPadMemberImage);
		return celibrityPadMemberImage;
	}

	@Override
	public PadMemberImages uploadCelibrityPadMemberImageTwo(PadMemberImages padMemberImages) {
		getSession().merge(padMemberImages);
		return padMemberImages;
	}

	@Override
	public List<?> getCelibrityPadMenberImage() {
		List<?> celi = null;
		
		String query = " SELECT cpi.celibrity_pad_image_id,cpi.celibrity_pad_name,cpi.celibrity_pad_image_name "+
				       " FROM celibrity_padmember_image cpi ORDER BY cpi.celibrity_pad_image_id DESC LIMIT 10 ";
		
		celi = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return celi;  
	}

	@Override
	public List<?> getCelibrityPadMenberImageTwo() {
		List<?> celi = null;
		
		String query = " SELECT pi.padmember_image_id,pi.padmember_name,pi.padmember_image_name "+
				       " FROM padmember_image pi ORDER BY pi.padmember_image_id DESC ";
		
		celi = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return celi; 
	}

	@Override
	public Long deleteCelibrityPadMemberImage(long celibrityPadImageId) {
		// TODO Auto-generated method stub
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM celibrity_padmember_image WHERE celibrity_pad_image_id=?")
				.setParameter(0,celibrityPadImageId).executeUpdate();
	}

	@Override
	public Long deleteCelibrityPadMemberImageTwo(long padmemberImageId) {
		// TODO Auto-generated method stub
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM padmember_image WHERE padmember_image_id=?")
				.setParameter(0,padmemberImageId).executeUpdate();
	}

	@Override
	public LatestPosterPhoto uploadLatestPosterImage(LatestPosterPhoto latestPosterPhoto) {
		getSession().merge(latestPosterPhoto);
		return latestPosterPhoto;
	}

	@Override
	public List<?> getLatestPosterImage() {
        List<?> poster = null;
		
		String query = " SELECT PI.poster_image_id,PI.poster_name,PI.poster_image_name "+
				       " FROM poster_image PI ORDER BY PI.poster_image_id DESC LIMIT 10 ";
		
		poster = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return poster;
	}

	@Override
	public Long deleteLatestPosterImage(long posterImageId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM poster_image WHERE poster_image_id=?")
				.setParameter(0,posterImageId).executeUpdate();
	}

	@Override
	public MovieTrailer uploadMovieTrailerImage(MovieTrailer movieTrailer) {
		getSession().merge(movieTrailer);
		return movieTrailer;
	}

	@Override
	public List<?> getMovieTrailerImage() {
        List<?> mtrail = null;
		
		String query = " SELECT mti.movie_trailer_image_id, mti.movie_trailer_image_name, "+
				       " mti.movie_trailer_name,mti.movie_trailer_url "+
				       " FROM movie_trailer_image mti ORDER BY mti.movie_trailer_image_id DESC LIMIT 4";
		
		mtrail = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return mtrail;
	}

	@Override
	public Long deleteMovieTrailerImage(long movieTrailerImageId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM movie_trailer_image WHERE movie_trailer_image_id=?")
				.setParameter(0,movieTrailerImageId).executeUpdate();
	}
	
	@Override
	public GifPhoto uploadGifImage(GifPhoto gifPhoto) {
		getSession().merge(gifPhoto);
		return gifPhoto;
	}

	@Override
	public List<?> getGifImage() {
		    List<?> gif = null;
			
			String query = " SELECT gi.gif_image_id,gi.gif_name,gi.gif_image_name,gi.gif_image_url "+
					       " FROM gif_image gi ORDER BY gi.gif_image_id DESC LIMIT 9";
			gif = this.getSession().createSQLQuery(query)
					.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		    return gif;
	}

	@Override
	public Long deleteGifImage(long gifImageId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM gif_image WHERE gif_image_id=?")
				.setParameter(0,gifImageId).executeUpdate();
	}

	@Override
	public CrowdFunding saveCrowdFunding(CrowdFunding crowdFunding) {
		getSession().merge(crowdFunding);
		return crowdFunding;
	}

	@Override
	public List<?> getCrowdFunding() {
        List<?> crowdf = null;
		String query = " SELECT * FROM crowd_funding cf ORDER BY crowd_funding_id DESC ";
		crowdf = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return crowdf;
	}

	@Override
	public Long deleteCrowdFunding(long crowdFundingId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM crowd_funding WHERE crowd_funding_id=?")
				.setParameter(0,crowdFundingId).executeUpdate();
	}

	@Override
	public MovieDistribution saveMovieDistribution(MovieDistribution movieDistribution) {
		getSession().merge(movieDistribution);
		return movieDistribution;
	}

	@Override
	public List<?> getMovieDistribution() {
		List<?> movi = null;
		String query = " SELECT * FROM movie_distribution md ORDER BY movie_distribution_id DESC ";
		movi = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return movi;
	}

	@Override
	public Long deleteMovieDistributionAdmin(long movieDistributionId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM movie_distribution WHERE movie_distribution_id=?")
				.setParameter(0,movieDistributionId).executeUpdate();
	}

	@Override
	public User getUserByUserId(long userId) {
		Query query = this.getSession().createQuery(" from User u where u.userId=:userId");
		query.setParameter("userId", userId);
		User user = (User) query.uniqueResult();
		return user;
	}

}
