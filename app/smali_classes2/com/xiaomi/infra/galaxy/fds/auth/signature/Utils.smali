.class public Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;
.super Ljava/lang/Object;


# static fields
.field private static final ANSI_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC_822_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC_850_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils$1;

    invoke-direct {v0}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils$1;-><init>()V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->RFC_822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils$2;

    invoke-direct {v0}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils$2;-><init>()V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->RFC_850_DATE_FORMAT:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils$3;

    invoke-direct {v0}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils$3;-><init>()V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->ANSI_DATE_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGMTDatetime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->RFC_822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseDateTimeFromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->RFC_822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->tryToParse(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->RFC_850_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->tryToParse(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->ANSI_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->tryToParse(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static parseDateTimeToMilliseconds(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/Utils;->parseDateTimeFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static parseUriParameters(Ljava/net/URI;)Lcom/google/common/collect/LinkedListMultimap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Lcom/google/common/collect/LinkedListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/LinkedListMultimap;->create()Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    aget-object v6, v5, v2

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    aget-object v4, v5, v2

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static tryToParse(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
