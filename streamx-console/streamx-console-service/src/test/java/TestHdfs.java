import com.streamxhub.streamx.common.util.HdfsUtils;

public class TestHdfs {
    public static void main(String[] agrs){
        String path ="/Users/heweiguo/develop/hadoop_runtime/streamx-console-service-1.1.0-SNAPSHOT/plugins";
        try {
            HdfsUtils.mkdirs("/test");
        }catch (Exception ex){
            ex.printStackTrace();
        }

    }
}
