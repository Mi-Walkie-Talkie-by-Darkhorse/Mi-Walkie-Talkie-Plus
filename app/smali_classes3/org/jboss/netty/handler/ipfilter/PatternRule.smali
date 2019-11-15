.class public Lorg/jboss/netty/handler/ipfilter/PatternRule;
.super Ljava/lang/Object;
.source "PatternRule.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/jboss/netty/handler/ipfilter/IpFilterRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private ipPattern:Ljava/util/regex/Pattern;

.field private isAllowRule:Z

.field private localhost:Z

.field private namePattern:Ljava/util/regex/Pattern;

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/ipfilter/PatternRule;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    iput-object p2, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->parse(Ljava/lang/String;)V

    return-void
.end method

.method private static addRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "\\."

    const-string v1, "\\\\."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    const-string v2, ".*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\?"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static isLocalhost(Ljava/net/InetAddress;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    sget-object v3, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "error getting ip of localhost"

    invoke-interface {v3, v4, v2}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :try_start_1
    const-string v2, "127.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "error getting ip of localhost"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const-string v1, ""

    array-length v4, v3

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v8

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "n:localhost"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->localhost:Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "n:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->addRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v6, "i:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->addRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->ipPattern:Ljava/util/regex/Pattern;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->namePattern:Ljava/util/regex/Pattern;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lorg/jboss/netty/handler/ipfilter/PatternRule;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/jboss/netty/handler/ipfilter/PatternRule;

    invoke-virtual {p1}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->localhost:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isLocalhost(Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->ipPattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->ipPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->namePattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->namePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowRule()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    return v0
.end method

.method public isDenyRule()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
