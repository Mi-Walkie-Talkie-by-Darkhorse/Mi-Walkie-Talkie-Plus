.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;
.super Ljava/lang/Enum;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileServerError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final enum FILE_SERVER_ERRNO_CREATE_TASK_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_CREATE_TASK_ERROR_VALUE:I = 0x2

.field public static final enum FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR_VALUE:I = 0x1

.field public static final enum FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK_VALUE:I = 0x4

.field public static final enum FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN_VALUE:I = 0x3

.field public static final enum FILE_SERVER_ERRNO_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_OK_VALUE:I = 0x0

.field public static final enum FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR_VALUE:I = 0xa

.field public static final enum FILE_SERVER_ERRNO_PULL_DATA_FINISHED:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_PULL_DATA_FINISHED_VALUE:I = 0xc

.field public static final enum FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER_VALUE:I = 0x6

.field public static final enum FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR_VALUE:I = 0x7

.field public static final enum FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR_VALUE:I = 0x8

.field public static final enum FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR_VALUE:I = 0x9

.field public static final enum FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR_VALUE:I = 0xb

.field public static final enum FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

.field public static final FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID_VALUE:I = 0x5

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_OK"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_CREATE_TASK_ERROR"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_CREATE_TASK_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const-string v1, "FILE_SERVER_ERRNO_PULL_DATA_FINISHED"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_FINISHED:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_CREATE_TASK_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_FINISHED:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_CREATE_TASK_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->FILE_SERVER_ERRNO_PULL_DATA_FINISHED:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileServerError;->value:I

    return v0
.end method
