package web;

public class Track {
	private int id;
	private String artistName;
	private String trackName;
	private String genre;
	private String bpm;
	private String key;
	private String length;
	private String embed;

	public Track() {

	}

	public Track(int id, String artistName, String trackName, String genre, String bpm, String key, String length,
			String embed) {
		super();
		this.id = id;
		this.artistName = artistName;
		this.trackName = trackName;
		this.genre = genre;
		this.bpm = bpm;
		this.key = key;
		this.length = length;
		this.embed = embed;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getArtistName() {
		return artistName;
	}

	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}

	public String getTrackName() {
		return trackName;
	}

	public void setTrackName(String trackName) {
		this.trackName = trackName;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getBpm() {
		return bpm;
	}

	public void setBpm(String bpm) {
		this.bpm = bpm;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getEmbed() {
		return embed;
	}

	public void setEmbed(String embed) {
		this.embed = embed;
	}

}
