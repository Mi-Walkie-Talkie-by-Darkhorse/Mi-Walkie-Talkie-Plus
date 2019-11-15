.class public Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;
.super Ljava/lang/Object;
.source "DefaultHttpDataFactory.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;


# static fields
.field public static final MINSIZE:J = 0x4000L


# instance fields
.field private final checkSize:Z

.field private minSize:J

.field private final requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/jboss/netty/handler/codec/http/HttpRequest;",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/HttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useDisk:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    iput-wide p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    return-void
.end method

.method private getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/HttpData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cleanAllHttpDatas()V
    .locals 5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;->delete()V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cleanRequestHttpDatas(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;->delete()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .locals 4

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    invoke-direct {v0, p2, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .locals 4

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-direct {v0, p2, p3}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    invoke-direct {v0, p2, p3, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    invoke-direct {v0, p2, p3, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p2, p3}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFileUpload(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    .locals 11

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;

    iget-wide v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v9}, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJ)V

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    goto :goto_0
.end method

.method public removeHttpDataFromClean(Lorg/jboss/netty/handler/codec/http/HttpRequest;Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 1

    instance-of v0, p2, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
