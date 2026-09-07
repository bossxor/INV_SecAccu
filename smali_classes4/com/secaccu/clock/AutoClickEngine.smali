.class public final Lcom/secaccu/clock/AutoClickEngine;
.super Ljava/lang/Object;
.source "AutoClickEngine.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

.field private static final KEY_ENABLED:Ljava/lang/String; = "auto_click_enabled"

.field private static final KEY_HAS_POS:Ljava/lang/String; = "auto_click_has_pos"

.field private static final KEY_X:Ljava/lang/String; = "auto_click_x"

.field private static final KEY_Y:Ljava/lang/String; = "auto_click_y"

.field private static final PREFS:Ljava/lang/String; = "secaccu_ui"


# instance fields
.field private volatile appContext:Landroid/content/Context;

.field private volatile firedPressAt:J

.field private final handler:Landroid/os/Handler;

.field private final scheduledClick:Ljava/lang/Runnable;

.field private volatile scheduledPressAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/secaccu/clock/AutoClickEngine;

    invoke-direct {v0}, Lcom/secaccu/clock/AutoClickEngine;-><init>()V

    sput-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/secaccu/clock/AutoClickEngine$1;

    invoke-direct {v0, p0}, Lcom/secaccu/clock/AutoClickEngine$1;-><init>(Lcom/secaccu/clock/AutoClickEngine;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->firedPressAt:J

    .line 34
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/secaccu/clock/AutoClickEngine;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/secaccu/clock/AutoClickEngine;->fireScheduled()V

    return-void
.end method

.method private fireAt(J)V
    .locals 9

    .line 183
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->firedPressAt:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->appContext:Landroid/content/Context;

    .line 187
    if-nez v0, :cond_1

    .line 188
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0, v0}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    invoke-static {}, Lcom/secaccu/clock/AutoClickService;->getInstance()Lcom/secaccu/clock/AutoClickService;

    move-result-object v1

    .line 194
    const-string v2, "string"

    if-nez v1, :cond_3

    .line 195
    const-string p1, "auto_click_need_a11y"

    invoke-static {v0, p1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    return-void

    .line 198
    :cond_3
    iput-wide p1, p0, Lcom/secaccu/clock/AutoClickEngine;->firedPressAt:J

    .line 199
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 200
    invoke-virtual {p0, v0}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v5

    .line 201
    invoke-virtual {p0, v0}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v6

    .line 202
    sget-object v7, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {v7}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 203
    invoke-virtual {v1, v5, v6}, Lcom/secaccu/clock/AutoClickService;->click(FF)Z

    move-result v1

    .line 204
    iget-object v5, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/secaccu/clock/AutoClickEngine$2;

    invoke-direct {v6, p0, v0}, Lcom/secaccu/clock/AutoClickEngine$2;-><init>(Lcom/secaccu/clock/AutoClickEngine;Landroid/content/Context;)V

    const-wide/16 v7, 0x190

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    if-eqz v1, :cond_4

    .line 213
    const-string v1, "auto_click_fired"

    invoke-static {v0, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_4
    iput-wide v3, p0, Lcom/secaccu/clock/AutoClickEngine;->firedPressAt:J

    .line 216
    const-string p1, "auto_click_fail"

    invoke-static {v0, p1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 191
    :cond_5
    :goto_1
    return-void

    .line 184
    :cond_6
    :goto_2
    return-void
.end method

.method private fireScheduled()V
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    invoke-direct {p0, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->fireAt(J)V

    .line 180
    return-void
.end method

.method static id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "secaccu_ui"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancelSchedule()V
    .locals 2

    .line 221
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 222
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method public evaluate(Landroid/content/Context;)V
    .locals 8

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->appContext:Landroid/content/Context;

    sget-object v0, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    invoke-virtual {v0, p1}, Lcom/secaccu/clock/ExactHourAlarm;->syncTargetToFormatter(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    sget-object p1, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object p1

    .line 156
    if-nez p1, :cond_1

    .line 157
    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v0

    double-to-long v0, v0

    .line 160
    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/secaccu/clock/AutoClickEngine;->nextPressAtMs(DD)J

    move-result-wide v2

    .line 161
    iget-wide v4, p0, Lcom/secaccu/clock/AutoClickEngine;->firedPressAt:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_2

    .line 162
    return-void

    .line 164
    :cond_2
    sub-long v4, v2, v0

    .line 165
    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gtz p1, :cond_4

    .line 166
    sub-long/2addr v0, v2

    const-wide/16 v4, 0x96

    cmp-long p1, v0, v4

    if-gtz p1, :cond_3

    .line 167
    invoke-direct {p0, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->fireAt(J)V

    .line 169
    :cond_3
    return-void

    .line 171
    :cond_4
    const-wide/16 v0, 0x7d0

    cmp-long p1, v4, v0

    if-gtz p1, :cond_5

    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    .line 172
    iput-wide v2, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 173
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_5
    return-void

    .line 152
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickEngine;->cancelSchedule()V

    .line 153
    return-void
.end method

.method public formatPressAt(J)Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 111
    const-string v1, "Asia/Seoul"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 112
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getX(Landroid/content/Context;)F
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_x"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getY(Landroid/content/Context;)F
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_y"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public hasPosition(Landroid/content/Context;)Z
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_has_pos"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/secaccu/clock/AutoClickService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    nop

    .line 81
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    .line 80
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 84
    if-eq v3, v1, :cond_0

    .line 85
    return v2

    .line 87
    :cond_0
    nop

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "enabled_accessibility_services"

    .line 87
    invoke-static {p1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    return v2

    .line 93
    :cond_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 94
    invoke-virtual {v3, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 95
    :cond_2
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 97
    return v1

    .line 101
    :cond_3
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p1

    .line 102
    :goto_0
    invoke-static {}, Lcom/secaccu/clock/AutoClickService;->getInstance()Lcom/secaccu/clock/AutoClickService;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_enabled"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public nextPressAtMs(DD)J
    .locals 0

    .line 106
    invoke-static {p1, p2, p3, p4}, Lcom/secaccu/clock/PressHintFormatter;->nextPressAtMs(DD)J

    move-result-wide p1

    return-wide p1
.end method

.method public positionLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 141
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "string"

    if-nez v0, :cond_0

    .line 142
    const-string v0, "auto_click_pos_unset"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 145
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 146
    const-string v3, "auto_click_pos_set"

    invoke-static {p1, v3, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "auto_click_enabled"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickEngine;->cancelSchedule()V

    .line 51
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/secaccu/clock/AutoClickEngine;->firedPressAt:J

    .line 52
    sget-object p1, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickOverlay;->hideAll()V

    .line 54
    :cond_0
    return-void
.end method

.method public setPosition(Landroid/content/Context;FF)V
    .locals 3

    .line 69
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    const-string v1, "auto_click_has_pos"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    const-string v1, "auto_click_x"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    const-string v1, "auto_click_y"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    .line 75
    return-void
.end method

.method public statusLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 116
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->isReady()Z

    move-result v0

    const-string v1, "auto_click_need_sync"

    const-string v2, "string"

    if-nez v0, :cond_0

    .line 117
    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v0

    .line 120
    if-nez v0, :cond_1

    .line 121
    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v0

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->nextPressAtMs(DD)J

    move-result-wide v0

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "  \u00b7  "

    if-nez v4, :cond_2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto_click_need_pos"

    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 128
    :cond_2
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto_click_need_a11y"

    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :cond_3
    iget-wide v4, p0, Lcom/secaccu/clock/AutoClickEngine;->firedPressAt:J

    cmp-long v0, v4, v0

    const-string v1, "  "

    if-nez v0, :cond_4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_click_done"

    invoke-static {p1, v4, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 134
    :cond_4
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_click_armed"

    invoke-static {p1, v4, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\uc815\uac01 \uc811\uc18d "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \uc5d0 \ub204\ub974\uae30"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 227
    return-void
.end method
