yt-dlp microservice
Private downloader for automation. Returns MP4 from a YouTube URL.
POST /download
	•	Headers: Authorization: Bearer API_TOKEN
	•	Body JSON: {“url”:“https://www.youtube.com/watch?v=…”,“short”:true}
	•	Response: MP4 stream
 Deploy on Fly.io:
	•	Create app from this repo on Fly.io.
	•	Set secret API_TOKEN and use port 8080.
