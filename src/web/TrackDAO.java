package web;

import java.util.List;

public interface TrackDAO {
	public List<Track> getTrackbyGenre(String genre);

	public List<Track> getAllTracks();

	public Track getAllInfo(String artistName);

	public List<Track> addTrack(Track track);

	public List<Track> deleteTrack(String track);

	public List<Track> updateTrack(Track track);

}
