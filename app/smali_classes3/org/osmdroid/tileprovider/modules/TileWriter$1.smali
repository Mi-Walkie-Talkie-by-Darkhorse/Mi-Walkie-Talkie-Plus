.class Lorg/osmdroid/tileprovider/modules/TileWriter$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/modules/TileWriter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/TileWriter;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/TileWriter$1;->this$0:Lorg/osmdroid/tileprovider/modules/TileWriter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->access$002(J)J

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter$1;->this$0:Lorg/osmdroid/tileprovider/modules/TileWriter;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->access$100(Lorg/osmdroid/tileprovider/modules/TileWriter;Ljava/io/File;)V

    invoke-static {}, Lorg/osmdroid/tileprovider/modules/TileWriter;->access$000()J

    move-result-wide v0

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter$1;->this$0:Lorg/osmdroid/tileprovider/modules/TileWriter;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->access$200(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OsmDroid"

    const-string v1, "Finished init thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
