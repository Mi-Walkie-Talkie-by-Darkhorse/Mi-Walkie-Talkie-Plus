.class public Lcom/xiaomi/slim/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a([BLcom/xiaomi/smack/a;)Lcom/xiaomi/smack/packet/d;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-string v0, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/smack/util/a;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "iq"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0, p2}, Lcom/xiaomi/smack/util/a;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/packet/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "presence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/smack/util/a;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/f;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/xiaomi/smack/l;

    iget-object v1, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/xiaomi/smack/util/a;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Lcom/xiaomi/smack/packet/g;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multi-login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/slim/e;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1
.end method
