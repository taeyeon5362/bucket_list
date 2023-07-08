package dto;
import java.io.Serializable;

public class Bucket implements Serializable{
    private static final long serialVersionUID = -5059746669664378748L;

    private String bucketId;
    private String bucket;

    public Bucket() {
        super();
    }

    public Bucket(String bucketId, String bucket) {
        this.bucketId = bucketId;
        this.bucket = bucket;
    }

    public String getBucketId() {
        return bucketId;
    }
    public void setBucketId(String bucketId) {
        this.bucketId = bucketId;
    }
    public String getBucket() {
        return bucket;
    }
    public void setBucket(String bucket) {
        this.bucket = bucket;
    }
}
