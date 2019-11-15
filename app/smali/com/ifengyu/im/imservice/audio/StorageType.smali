.class public final enum Lcom/ifengyu/im/imservice/audio/StorageType;
.super Ljava/lang/Enum;
.source "StorageType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/audio/StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/audio/StorageType;

.field public static final enum TYPE_AUDIO:Lcom/ifengyu/im/imservice/audio/StorageType;

.field public static final enum TYPE_FILE:Lcom/ifengyu/im/imservice/audio/StorageType;

.field public static final enum TYPE_IMAGE:Lcom/ifengyu/im/imservice/audio/StorageType;

.field public static final enum TYPE_LOG:Lcom/ifengyu/im/imservice/audio/StorageType;

.field public static final enum TYPE_TEMP:Lcom/ifengyu/im/imservice/audio/StorageType;

.field public static final enum TYPE_THUMB_IMAGE:Lcom/ifengyu/im/imservice/audio/StorageType;

.field public static final enum TYPE_THUMB_VIDEO:Lcom/ifengyu/im/imservice/audio/StorageType;

.field public static final enum TYPE_VIDEO:Lcom/ifengyu/im/imservice/audio/StorageType;


# instance fields
.field private storageDirectoryName:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field private storageMinSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    const-string v1, "TYPE_LOG"

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->LOG_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-direct {v0, v1, v4, v2}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_LOG:Lcom/ifengyu/im/imservice/audio/StorageType;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    const-string v1, "TYPE_TEMP"

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->TEMP_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-direct {v0, v1, v5, v2}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_TEMP:Lcom/ifengyu/im/imservice/audio/StorageType;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    const-string v1, "TYPE_FILE"

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->FILE_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-direct {v0, v1, v6, v2}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_FILE:Lcom/ifengyu/im/imservice/audio/StorageType;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    const-string v1, "TYPE_AUDIO"

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->AUDIO_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-direct {v0, v1, v7, v2}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_AUDIO:Lcom/ifengyu/im/imservice/audio/StorageType;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    const-string v1, "TYPE_IMAGE"

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->IMAGE_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-direct {v0, v1, v8, v2}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_IMAGE:Lcom/ifengyu/im/imservice/audio/StorageType;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    const-string v1, "TYPE_VIDEO"

    const/4 v2, 0x5

    sget-object v3, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->VIDEO_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_VIDEO:Lcom/ifengyu/im/imservice/audio/StorageType;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    const-string v1, "TYPE_THUMB_IMAGE"

    const/4 v2, 0x6

    sget-object v3, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->THUMB_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_THUMB_IMAGE:Lcom/ifengyu/im/imservice/audio/StorageType;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    const-string v1, "TYPE_THUMB_VIDEO"

    const/4 v2, 0x7

    sget-object v3, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->THUMB_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_THUMB_VIDEO:Lcom/ifengyu/im/imservice/audio/StorageType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ifengyu/im/imservice/audio/StorageType;

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_LOG:Lcom/ifengyu/im/imservice/audio/StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_TEMP:Lcom/ifengyu/im/imservice/audio/StorageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_FILE:Lcom/ifengyu/im/imservice/audio/StorageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_AUDIO:Lcom/ifengyu/im/imservice/audio/StorageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_IMAGE:Lcom/ifengyu/im/imservice/audio/StorageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_VIDEO:Lcom/ifengyu/im/imservice/audio/StorageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_THUMB_IMAGE:Lcom/ifengyu/im/imservice/audio/StorageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType;->TYPE_THUMB_VIDEO:Lcom/ifengyu/im/imservice/audio/StorageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->$VALUES:[Lcom/ifengyu/im/imservice/audio/StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;",
            ")V"
        }
    .end annotation

    const-wide/32 v4, 0x1400000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/im/imservice/audio/StorageType;-><init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ifengyu/im/imservice/audio/StorageType;->storageDirectoryName:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    iput-wide p4, p0, Lcom/ifengyu/im/imservice/audio/StorageType;->storageMinSize:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/audio/StorageType;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/audio/StorageType;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/audio/StorageType;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/audio/StorageType;->$VALUES:[Lcom/ifengyu/im/imservice/audio/StorageType;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/audio/StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/audio/StorageType;

    return-object v0
.end method


# virtual methods
.method public getStorageMinSize()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/audio/StorageType;->storageMinSize:J

    return-wide v0
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/StorageType;->storageDirectoryName:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
