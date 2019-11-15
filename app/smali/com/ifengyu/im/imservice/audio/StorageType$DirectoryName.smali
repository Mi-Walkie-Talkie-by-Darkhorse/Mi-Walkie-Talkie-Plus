.class final enum Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;
.super Ljava/lang/Enum;
.source "StorageType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/audio/StorageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DirectoryName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field public static final enum AUDIO_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field public static final enum DATA_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field public static final enum FILE_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field public static final enum IMAGE_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field public static final enum LOG_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field public static final enum TEMP_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field public static final enum THUMB_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

.field public static final enum VIDEO_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const-string v1, "AUDIO_DIRECTORY_NAME"

    const-string v2, "audio/"

    invoke-direct {v0, v1, v4, v2}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->AUDIO_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const-string v1, "DATA_DIRECTORY_NAME"

    const-string v2, "data/"

    invoke-direct {v0, v1, v5, v2}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->DATA_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const-string v1, "FILE_DIRECTORY_NAME"

    const-string v2, "file/"

    invoke-direct {v0, v1, v6, v2}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->FILE_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const-string v1, "LOG_DIRECTORY_NAME"

    const-string v2, "log/"

    invoke-direct {v0, v1, v7, v2}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->LOG_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const-string v1, "TEMP_DIRECTORY_NAME"

    const-string v2, "temp/"

    invoke-direct {v0, v1, v8, v2}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->TEMP_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const-string v1, "IMAGE_DIRECTORY_NAME"

    const/4 v2, 0x5

    const-string v3, "image/"

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->IMAGE_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const-string v1, "THUMB_DIRECTORY_NAME"

    const/4 v2, 0x6

    const-string v3, "thumb/"

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->THUMB_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    new-instance v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const-string v1, "VIDEO_DIRECTORY_NAME"

    const/4 v2, 0x7

    const-string v3, "video/"

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->VIDEO_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->AUDIO_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->DATA_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->FILE_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->LOG_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->TEMP_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->IMAGE_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->THUMB_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->VIDEO_DIRECTORY_NAME:Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->$VALUES:[Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->path:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->$VALUES:[Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/StorageType$DirectoryName;->path:Ljava/lang/String;

    return-object v0
.end method
