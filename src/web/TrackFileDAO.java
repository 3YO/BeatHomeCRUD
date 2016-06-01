package web;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

public class TrackFileDAO implements TrackDAO {
	private static final String FILE_NAME = "/WEB-INF/trackinfo.csv";
	private List<Track> tracks = new ArrayList<>();

	@Autowired
	private ApplicationContext ac;

	@PostConstruct
	public void init() {

		try (InputStream is = ac.getResource(FILE_NAME).getInputStream();
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {

				String[] tokens = line.split(",");
				int id = (int)Integer.parseInt(tokens[0]);
				String artistName = tokens[1];
				String trackName = tokens[2];
				String genre = tokens[3];
				String bpm = tokens[4];
				String key = tokens[5];
				String length = tokens[6];
				String embed = tokens[7];
				tracks.add(new Track(id, artistName, trackName, genre, bpm, key, length, embed));
			}

		} catch (Exception e) {
			System.err.println(e);
		}

	}

	public List<Track> getTrackbyGenre(String genre) {
		Track t = null;
		List<Track> genreList = new ArrayList<Track>();
		for ( Track track : tracks) {
			if(track.getGenre().equalsIgnoreCase(genre)) {
				t = track;
				genreList.add(t);
			}
		}
		
		return genreList;
		
	}
	
	public Track getAllInfo(String a) {
		Track i = null;
		for (Track track : tracks) {
			if(track.getArtistName().equals(a)) {
				i = track;
			}
		}
		
		return i;
	}

	public List<Track> getAllTracks() {
		return tracks;
	}

	@Override
	public List<Track> addTrack(Track track) {
		tracks.add(track);
		return tracks;
	}
	
	@Override
	public List<Track> deleteTrack(String tr) {
		Track removeTrack = new Track();
		for(Track t: tracks){
			if(t.getTrackName().equals(tr)){
				removeTrack = t;
				}
				
		}
		tracks.remove(removeTrack);
		return tracks;
	}
	@Override
	public List<Track> updateTrack(Track track) {
		Track oldTrack = new Track();
		for(Track t: tracks){
			if(track.getId()==t.getId()){
				oldTrack = t;
			}
			
		}
		tracks.set(tracks.indexOf(oldTrack), track);
		return tracks;
	}
	
	
}
