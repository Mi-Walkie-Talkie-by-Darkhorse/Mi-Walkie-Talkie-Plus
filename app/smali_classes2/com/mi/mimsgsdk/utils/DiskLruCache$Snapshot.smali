.class public final Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/utils/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/mi/mimsgsdk/utils/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/mi/mimsgsdk/utils/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->this$0:Lcom/mi/mimsgsdk/utils/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->sequenceNumber:J

    iput-object p5, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/mimsgsdk/utils/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/mi/mimsgsdk/utils/DiskLruCache$1;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;-><init>(Lcom/mi/mimsgsdk/utils/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v1, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/mi/mimsgsdk/utils/ImageCacheUtils;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public edit()Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->this$0:Lcom/mi/mimsgsdk/utils/DiskLruCache;

    iget-object v1, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/DiskLruCache;->access$1500(Lcom/mi/mimsgsdk/utils/DiskLruCache;Ljava/lang/String;J)Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/utils/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
