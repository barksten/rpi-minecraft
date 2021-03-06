# This docker file builds a basic minecraft server
# directly from the default minecraft server from Mojang
#
FROM hypriot/rpi-java
RUN apt-get update
RUN apt-get install -y wget
RUN mkdir minecraft
RUN wget -O minecraft/minecraft_server.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar
RUN echo "eula=true" > eula.txt
CMD java -Xms512m -Xmx1024m -jar minecraft/minecraft_server.jar nogui
EXPOSE 25565
