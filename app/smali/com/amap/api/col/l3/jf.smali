.class public Lcom/amap/api/col/l3/jf;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/amap/api/col/l3/fn;

.field private f:Landroid/content/ServiceConnection;

.field private g:Landroid/content/ServiceConnection;

.field private h:Landroid/content/ServiceConnection;

.field private i:Landroid/content/Intent;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->d:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->a:Z

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->e:Lcom/amap/api/col/l3/fn;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->f:Landroid/content/ServiceConnection;

    .line 8
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->g:Landroid/content/ServiceConnection;

    .line 9
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->h:Landroid/content/ServiceConnection;

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->i:Landroid/content/Intent;

    const-string v0, "com.autonavi.minimap"

    .line 11
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->j:Ljava/lang/String;

    const-string v0, "com.amap.api.service.AMapService"

    .line 12
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->k:Ljava/lang/String;

    const-string v0, "com.autonavi.minimap.LBSConnectionService"

    .line 13
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->l:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->m:Z

    .line 15
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->n:Z

    .line 16
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->o:Z

    .line 17
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->p:Z

    .line 18
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->q:Z

    .line 19
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->r:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->s:Ljava/util/List;

    .line 21
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->t:Z

    .line 22
    iput-object p1, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/jo;->a([BLjava/lang/String;)[B

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/amap/api/col/l3/gc;->b([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/jf;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ConnectionServiceManager"

    .line 25
    invoke-static {p1, v0, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/jf;Lcom/amap/api/col/l3/fn;)Lcom/amap/api/col/l3/fn;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/jf;->e:Lcom/amap/api/col/l3/fn;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)Lcom/amap/api/col/l3/jh;
    .locals 6

    const-string v0, "error"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string v2, "key"

    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 20
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/amap/api/col/l3/gc;->b(Ljava/lang/String;)[B

    move-result-object v2

    :try_start_0
    const-string v3, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    .line 22
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/jo;->b([BLjava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "ConnectionServiceManager"

    const-string v4, "parseData part"

    .line 23
    invoke-static {v2, v3, v4}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    const-string v3, "result"

    .line 24
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/amap/api/col/l3/gc;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 27
    :try_start_1
    invoke-static {v2, p1}, Lcom/amap/api/col/l3/jo;->a([B[B)[B

    move-result-object p1

    .line 28
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 29
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "invaid type"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 33
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jf;->d:Z

    :cond_2
    const-string v0, "empty appkey"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jf;->d:Z

    :cond_3
    const-string v0, "refused"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jf;->d:Z

    :cond_4
    const-string v0, "failed"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-object v1

    .line 39
    :cond_5
    new-instance v0, Lcom/amap/api/col/l3/jh;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3/jh;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/jh;->b(Lorg/json/JSONObject;)V

    const-string p1, "lbs"

    .line 41
    invoke-virtual {v0, p1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 42
    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    const-string p1, "WGS84"

    .line 43
    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    .line 44
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    .line 45
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3/jz;->a(DD)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 46
    iget-object p1, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/amap/api/col/l3/kb;->a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 48
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    return-object v0

    :catchall_1
    move-exception p1

    .line 49
    const-class v0, Lcom/amap/api/col/l3/jf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "parseData"

    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v1
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/jy;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->b:Ljava/lang/String;

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/col/l3/jf;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 6
    :goto_0
    iget-boolean v2, p0, Lcom/amap/api/col/l3/jf;->n:Z

    if-nez v2, :cond_1

    .line 7
    invoke-static {}, Lcom/amap/api/col/l3/jy;->h()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/amap/api/col/l3/jf;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/amap/api/col/l3/jf;->j:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/col/l3/jf;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/amap/api/col/l3/jf;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 12
    :goto_1
    iget-boolean v3, p0, Lcom/amap/api/col/l3/jf;->m:Z

    if-eqz v3, :cond_0

    .line 13
    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->q:Z

    :cond_2
    return-void
.end method

.method private g()Lcom/amap/api/col/l3/jh;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jf;->d:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3/jf;->m:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const-string v3, "corse"

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appkey"

    .line 4
    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "opensdk"

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->e:Lcom/amap/api/col/l3/fn;

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->e:Lcom/amap/api/col/l3/fn;

    invoke-interface {v2, v1}, Lcom/amap/api/col/l3/fn;->a(Landroid/os/Bundle;)I

    .line 8
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 9
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/jf;->a(Landroid/os/Bundle;)Lcom/amap/api/col/l3/jh;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    const-string v2, "ConnectionServiceManager"

    const-string v3, "sendCommand"

    .line 10
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "ConnectionServiceManager"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->f:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/jf;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "unbindService connService"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->g:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3/jf;->q:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "unbindService pushService"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->h:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/col/l3/jf;->r:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    const-string v2, "unbindService otherService"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3/jf;->s:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/jf;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->e:Lcom/amap/api/col/l3/fn;

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->e:Lcom/amap/api/col/l3/fn;

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->f:Landroid/content/ServiceConnection;

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->g:Landroid/content/ServiceConnection;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->h:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->d:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->a:Z

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->m:Z

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->n:Z

    .line 12
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->o:Z

    .line 13
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->t:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->p:Z

    .line 15
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->q:Z

    .line 16
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->r:Z

    .line 17
    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 18
    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->s:Ljava/util/List;

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jf;->f:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/jf$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/jf$1;-><init>(Lcom/amap/api/col/l3/jf;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->f:Landroid/content/ServiceConnection;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jf;->g:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/amap/api/col/l3/jf$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/jf$2;-><init>(Lcom/amap/api/col/l3/jf;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->g:Landroid/content/ServiceConnection;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/jf;->h:Landroid/content/ServiceConnection;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/amap/api/col/l3/jf$3;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/jf$3;-><init>(Lcom/amap/api/col/l3/jf;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/jf;->h:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ConnectionServiceManager"

    const-string v2, "init"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jf;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/jy;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->i:Landroid/content/Intent;

    const-string v2, "appkey"

    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->i:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/l3/jf;->k:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->i:Landroid/content/Intent;

    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jf;->m:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3/jy;->g()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->i:Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/amap/api/col/l3/jf;->j:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->i:Landroid/content/Intent;

    iget-object v4, p0, Lcom/amap/api/col/l3/jf;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/col/l3/jf;->m:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    iget-boolean v2, p0, Lcom/amap/api/col/l3/jf;->m:Z

    if-eqz v2, :cond_1

    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jf;->p:Z

    .line 3
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/col/l3/jf;->f()V

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jf;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5
    :catchall_2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jf;->t:Z

    return-void
.end method

.method public final d()V
    .locals 9

    const-string v0, "ConnectionServiceManager"

    .line 1
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jf;->r:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jf;->t:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/jy;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3/jy;->q()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/kc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_3

    .line 7
    :try_start_1
    invoke-virtual {v3}, Lcom/amap/api/col/l3/kc;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 9
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/kc;->b()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v3}, Lcom/amap/api/col/l3/kc;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v3}, Lcom/amap/api/col/l3/kc;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 13
    invoke-virtual {v3}, Lcom/amap/api/col/l3/kc;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    :cond_4
    invoke-virtual {v3}, Lcom/amap/api/col/l3/kc;->d()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    .line 16
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 17
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 18
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 20
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {v3}, Lcom/amap/api/col/l3/kc;->f()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 23
    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 24
    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->s:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_7
    iget-object v3, p0, Lcom/amap/api/col/l3/jf;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/amap/api/col/l3/jf;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    const-string v4, "bindOtherService 1"

    .line 27
    invoke-static {v3, v0, v4}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    const-string v3, "bindOtherService"

    .line 28
    invoke-static {v2, v0, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_8
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jf;->r:Z

    return-void
.end method

.method public final e()Lcom/amap/api/col/l3/jh;
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/jy;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jf;->c()V

    const/4 v0, 0x4

    :goto_0
    if-lez v0, :cond_1

    .line 3
    iget-boolean v2, p0, Lcom/amap/api/col/l3/jf;->a:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x1f4

    .line 4
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jf;->a:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/amap/api/col/l3/jf;->g()Lcom/amap/api/col/l3/jh;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method
