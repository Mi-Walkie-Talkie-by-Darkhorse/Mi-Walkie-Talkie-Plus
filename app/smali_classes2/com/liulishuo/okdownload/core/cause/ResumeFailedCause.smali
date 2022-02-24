.class public final enum Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
.super Ljava/lang/Enum;
.source "ResumeFailedCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum CONTENT_LENGTH_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum FILE_NOT_EXIST:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum INFO_DIRTY:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum OUTPUT_STREAM_NOT_SUPPORT:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum RESPONSE_CREATED_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum RESPONSE_ETAG_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum RESPONSE_PRECONDITION_FAILED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public static final enum RESPONSE_RESET_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/4 v1, 0x0

    const-string v2, "INFO_DIRTY"

    invoke-direct {v0, v2, v1}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->INFO_DIRTY:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    .line 2
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/4 v2, 0x1

    const-string v3, "FILE_NOT_EXIST"

    invoke-direct {v0, v3, v2}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->FILE_NOT_EXIST:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    .line 3
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/4 v3, 0x2

    const-string v4, "OUTPUT_STREAM_NOT_SUPPORT"

    invoke-direct {v0, v4, v3}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->OUTPUT_STREAM_NOT_SUPPORT:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    .line 4
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/4 v4, 0x3

    const-string v5, "RESPONSE_ETAG_CHANGED"

    invoke-direct {v0, v5, v4}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_ETAG_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    .line 5
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/4 v5, 0x4

    const-string v6, "RESPONSE_PRECONDITION_FAILED"

    invoke-direct {v0, v6, v5}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_PRECONDITION_FAILED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    .line 6
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/4 v6, 0x5

    const-string v7, "RESPONSE_CREATED_RANGE_NOT_FROM_0"

    invoke-direct {v0, v7, v6}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_CREATED_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    .line 7
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/4 v7, 0x6

    const-string v8, "RESPONSE_RESET_RANGE_NOT_FROM_0"

    invoke-direct {v0, v8, v7}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_RESET_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    .line 8
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/4 v8, 0x7

    const-string v9, "CONTENT_LENGTH_CHANGED"

    invoke-direct {v0, v9, v8}, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->CONTENT_LENGTH_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    .line 9
    sget-object v10, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->INFO_DIRTY:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    aput-object v10, v9, v1

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->FILE_NOT_EXIST:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    aput-object v1, v9, v2

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->OUTPUT_STREAM_NOT_SUPPORT:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    aput-object v1, v9, v3

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_ETAG_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    aput-object v1, v9, v4

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_PRECONDITION_FAILED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    aput-object v1, v9, v5

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_CREATED_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    aput-object v1, v9, v6

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_RESET_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 1

    .line 1
    const-class v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0
.end method

.method public static values()[Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 1

    .line 1
    sget-object v0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    invoke-virtual {v0}, [Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object v0
.end method
