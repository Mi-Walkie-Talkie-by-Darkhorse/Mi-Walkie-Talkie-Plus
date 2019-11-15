.class final Lorg/jboss/netty/handler/codec/http/CookieDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "CookieDateFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x18d58857dc317a90L


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "E, d-MMM-y HH:mm:ss z"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
