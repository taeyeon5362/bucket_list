package dao;
import dto.Bucket;

import java.util.ArrayList;

public class bucketRepository {

    private ArrayList<Bucket> listOfBuckets = new ArrayList<Bucket>();

    private static bucketRepository instance= new bucketRepository();
    public static bucketRepository getInstance() {
        return instance;
    }

    public Bucket getBucketById(String bucketId) {
        Bucket bucketById = null;

        for (int i = 0; i < listOfBuckets.size(); i++) {
            Bucket bucket =  listOfBuckets.get(i);
            if (bucket != null && bucket.getBucketId() != null && bucket.getBucketId().equals(bucketId)) {
                bucketById = bucket;
                break;
            }
        }
        return bucketById;
    }

    public void addBucket(Bucket bucket) {
        listOfBuckets.add(bucket);
    }
    public ArrayList<Bucket> getAllBuckets() {
        return  listOfBuckets;
    }
}
